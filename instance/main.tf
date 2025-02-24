data "oci_core_vnic_attachments" "these" {
  compartment_id      = var.compartment_id
  availability_domain = local.ads[var.availability_domain - 1].name
  instance_id         = oci_core_instance.this.id
}

data "oci_core_private_ips" "these" {
  vnic_id = data.oci_core_vnic_attachments.these.vnic_attachments[0].vnic_id
  filter {
    name   = "is_primary"
    values = [true]
  }
}

data "oci_identity_availability_domains" "these" {
  compartment_id = var.compartment_id
}

data "cloudinit_config" "this" {
  for_each      = local.cloud_init_files
  gzip          = false
  base64_encode = false
  dynamic "part" {
    for_each = local.cloud_init_files
    content {
      content_type = "text/x-shellscript"
      filename     = basename(part.value.filename)
      content      = templatefile("${path.root}/${part.value.filename}", merge(part.value.vars, {}))
    }
  }
}

locals {
  ads              = data.oci_identity_availability_domains.these.availability_domains
  cloud_init_files = try({ for k, v in var.cloud_init : k => v }, {})
}

resource "oci_core_instance" "this" {
  availability_domain = local.ads[var.availability_domain - 1].name
  compartment_id      = var.compartment_id
  agent_config {
    are_all_plugins_disabled = var.are_all_plugins_disabled
    is_management_disabled   = var.is_management_disabled
    is_monitoring_disabled   = var.is_monitoring_disabled
    dynamic "plugins_config" {
      for_each = try(var.enabled_plugins, null)
      content {
	desired_state = "ENABLED"
	name          = plugins_config.value
      }
    }
  }
  create_vnic_details {
    assign_ipv6ip          = var.assign_ipv6ip
    private_ip             = var.private_ip
    assign_public_ip       = var.assign_public_ip
    skip_source_dest_check = var.skip_source_dest_check
    subnet_id              = var.subnet_id
    nsg_ids                = var.nsg_ids
  }
  display_name                        = var.display_name
  fault_domain                        = format("FAULT-DOMAIN-%s", var.fault_domain)
  freeform_tags                       = var.freeform_tags
  instance_configuration_id           = var.instance_configuration_id
  is_pv_encryption_in_transit_enabled = var.is_pv_encryption_in_transit_enabled
  metadata = {
    ssh_authorized_keys = var.ssh_public_keys
    user_data           = base64encode(join("", [for k, v in local.cloud_init_files : data.cloudinit_config.this[k].rendered]))
  }
  shape = var.shape
  dynamic "shape_config" {
    for_each = var.shape_config[*]
    content {
      baseline_ocpu_utilization     = var.shape_config.baseline_ocpu_utilization
      gpus                          = var.shape_config.gpus
      local_disks                   = var.shape_config.local_disks
      local_disks_total_size_in_gbs = var.shape_config.local_disks_total_size_in_gbs
      max_vnic_attachments          = var.shape_config.max_vnic_attachments
      memory_in_gbs                 = var.shape_config.memory_in_gbs
      networking_bandwidth_in_gbps  = var.shape_config.networking_bandwidth_in_gbps
      nvmes                         = var.shape_config.nvmes
      ocpus                         = var.shape_config.ocpus
      vcpus                         = var.shape_config.vcpus
    }
  }
  source_details {
    source_id               = var.source_id
    source_type             = var.source_type
    boot_volume_size_in_gbs = var.boot_volume_size_in_gbs
    boot_volume_vpus_per_gb = var.boot_volume_vpus_per_gb
    kms_key_id              = var.kms_key_id
  }
  preserve_boot_volume = var.preserve_boot_volume
  state                = var.state
}
