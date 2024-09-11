data "cloudinit_config" "this" {
  for_each      = local.cloudinit_files
  gzip          = false
  base64_encode = true

  dynamic "part" {
    for_each = local.cloudinit_files
    content {
      content_type = "text/x-shellscript"
      filename     = basename(part.value.filename)
      content      = templatefile("${part.value.filename}", merge(part.value.vars, {}))
    }
  }
}

data "oci_identity_availability_domains" "these" {
  compartment_id = var.compartment_id
}

locals {
  ads             = data.oci_identity_availability_domains.these.availability_domains
  cloudinit_files = var.cloud_init != null ? { for k, v in var.cloud_init : k => v } : {}
}

resource "oci_core_instance" "this" {
  compartment_id                      = var.compartment_id
  availability_domain                 = local.ads[var.availability_domain - 1].name
  fault_domain                        = format("FAULT-DOMAIN-%s", var.fault_domain)
  shape                               = var.shape
  display_name                        = var.display_name
  preserve_boot_volume                = var.preserve_boot_volume
  freeform_tags                       = var.freeform_tags
  is_pv_encryption_in_transit_enabled = var.is_pv_encryption_in_transit_enabled
  state                               = var.state
  instance_configuration_id           = var.instance_configuration_id

  agent_config {
    are_all_plugins_disabled = var.are_all_plugins_disabled
    is_management_disabled   = var.is_management_disabled
    is_monitoring_disabled   = var.is_monitoring_disabled

    dynamic "plugins_config" {
      for_each = var.enabled_plugins != null ? var.enabled_plugins : []
      content {
	desired_state = "ENABLED"
	name          = plugins_config.value
      }
    }
  }

  create_vnic_details {
    assign_ipv6ip    = var.assign_ipv6ip
    assign_public_ip = var.assign_public_ip
    subnet_id        = var.subnet_id
    nsg_ids          = var.nsg_ids
  }

  dynamic "shape_config" {
    for_each = length(regexall("(?i)(flex)", var.shape)) > 0 ? [1] : []
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

  metadata = {
    ssh_authorized_keys = var.ssh_public_keys != null ? join("", [for i in var.ssh_public_keys : file(i)]) : null
    user_data           = join("", [for k, v in local.cloudinit_files : data.cloudinit_config.this[k].rendered])
  }
}
