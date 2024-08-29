data "oci_identity_availability_domains" "these" {
  compartment_id = var.compartment_id
}

locals {
  ads = data.oci_identity_availability_domains.these.availability_domains
}

resource "oci_core_volume_group" "this" {
  availability_domain            = local.ads[var.availability_domain - 1].name
  compartment_id                 = var.compartment_id
  backup_policy_id               = var.backup_policy_id
  defined_tags                   = var.defined_tags
  display_name                   = var.display_name
  freeform_tags                  = var.freeform_tags
  volume_ids                     = var.volume_ids
  preserve_volume_replica        = var.preserve_volume_replica
  volume_group_replicas_deletion = var.volume_group_replicas_deletion

  # TODO: add datasource to validate source ids exist
  dynamic "source_details" {
    for_each = var.source_details[*]
    content {
      type                    = var.source_details.type
      volume_group_backup_id  = var.source_details.volume_group_backup_id
      volume_group_id         = var.source_details.volume_group_id
      volume_group_replica_id = var.source_details.volume_group_replica_id
      volume_ids              = var.source_details.volume_ids
    }
  }

  dynamic "volume_group_replicas" {
    for_each = var.volume_group_replicas != null ? var.volume_group_replicas : []
    iterator = vgr
    content {
      availability_domain = vgr.value.availability_domain
      display_name        = vgr.value.display_name
    }
  }

  provisioner "local-exec" {
    interpreter = ["/bin/bash", "-c"]
    command = (
      length(var.volume_group_replicas) > 0 ?
      templatefile("${path.module}/wait_for_replica.tmpl", {
	compartment_id                           = var.compartment_id
	volume_group_replica_id                  = self.volume_group_replicas[0].volume_group_replica_id
	volume_group_replica_availability_domain = self.volume_group_replicas[0].availability_domain
	volume_group_replica_region              = lower(replace(self.volume_group_replicas[0].availability_domain, "/(.*):|(-AD-[1-3])/", ""))
	config_file_profile                      = var.config_file_profile
      }) :
      "/bin/true"
    )
  }

  # provisioner "local-exec" {
  #   interpreter = ["/bin/bash", "-c"]
  #   command = (
  #     var.activate_replica == true && length(var.volume_group_replicas) > 0 ?
  #     templatefile("${path.module}/activate_replica.tmpl", {
  #	compartment_id                           = var.compartment_id
  #	volume_group_replica_id                  = self.volume_group_replicas[0].volume_group_replica_id
  #	volume_group_replica_availability_domain = self.volume_group_replicas[0].availability_domain
  #	volume_group_replica_region              = lower(replace("${self.volume_group_replicas[0].availability_domain}", "/(.*):|(-AD-[1-3])/", ""))
  #     }) :
  #     "/bin/true"
  #   )
  # }

  provisioner "local-exec" {
    when        = destroy
    interpreter = ["/bin/bash", "-c"]
    command = (
      length(self.volume_group_replicas) > 0 ?
      templatefile("${path.module}/disable_replica.tmpl", {
	volume_group_id     = self.id
	region              = replace(self.availability_domain, "/(.*):|(-AD-[1-3])/", "")
	config_file_profile = var.config_file_profile
      }) :
      "/bin/true"
    )
  }
}
