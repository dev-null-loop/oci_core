data "oci_core_vnic_attachments" "these" {
  count               = var.enable_vnic_lookup_outputs ? 1 : 0
  compartment_id      = var.compartment_id
  availability_domain = var.availability_domain
  instance_id         = oci_core_instance.this.id
}

data "oci_core_private_ips" "these" {
  count   = var.enable_vnic_lookup_outputs ? 1 : 0
  vnic_id = data.oci_core_vnic_attachments.these[0].vnic_attachments[0].vnic_id
  filter {
    name   = "is_primary"
    values = [true]
  }
}

resource "oci_core_instance" "this" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  shape               = var.shape

  dynamic "agent_config" {
    for_each = var.agent_config[*]
    iterator = ac
    content {
      are_all_plugins_disabled = ac.value.are_all_plugins_disabled
      is_management_disabled   = ac.value.is_management_disabled
      is_monitoring_disabled   = ac.value.is_monitoring_disabled
      dynamic "plugins_config" {
        for_each = ac.value.plugins_config != null ? ac.value.plugins_config : []
        iterator = pc
        content {
          desired_state = pc.value.desired_state
          name          = pc.value.name
        }
      }
    }
  }

  dynamic "availability_config" {
    for_each = var.availability_config[*]
    iterator = av
    content {
      is_live_migration_preferred = av.value.is_live_migration_preferred
      recovery_action             = av.value.recovery_action
    }
  }

  cluster_placement_group_id = var.cluster_placement_group_id
  compute_cluster_id         = var.compute_cluster_id

  dynamic "create_vnic_details" {
    for_each = var.create_vnic_details[*]
    iterator = cvd
    content {
      assign_ipv6ip             = cvd.value.assign_ipv6ip
      assign_private_dns_record = cvd.value.assign_private_dns_record
      assign_public_ip          = cvd.value.assign_public_ip
      defined_tags              = cvd.value.defined_tags
      display_name              = cvd.value.display_name
      freeform_tags             = cvd.value.freeform_tags
      hostname_label            = cvd.value.hostname_label
      dynamic "ipv6address_ipv6subnet_cidr_pair_details" {
        for_each = cvd.value.ipv6address_ipv6subnet_cidr_pair_details != null ? cvd.value.ipv6address_ipv6subnet_cidr_pair_details : []
        iterator = iiscpd
        content {
          ipv6address     = iiscpd.value.ipv6address
          ipv6id          = iiscpd.value.ipv6id
          ipv6subnet_cidr = iiscpd.value.ipv6subnet_cidr
        }
      }
      nsg_ids                = cvd.value.nsg_ids
      private_ip             = cvd.value.private_ip
      private_ip_id          = cvd.value.private_ip_id
      security_attributes    = cvd.value.security_attributes
      skip_source_dest_check = cvd.value.skip_source_dest_check
      subnet_cidr            = cvd.value.subnet_cidr
      subnet_id              = cvd.value.subnet_id
      vlan_id                = cvd.value.vlan_id
    }
  }

  dedicated_vm_host_id      = var.dedicated_vm_host_id
  defined_tags              = var.defined_tags
  display_name              = var.display_name
  extended_metadata         = var.extended_metadata
  fault_domain              = var.fault_domain
  freeform_tags             = var.freeform_tags
  hostname_label            = var.hostname_label
  instance_configuration_id = var.instance_configuration_id

  instance_options {
    are_legacy_imds_endpoints_disabled = var.are_legacy_imds_endpoints_disabled
  }

  ipxe_script                         = var.ipxe_script
  is_pv_encryption_in_transit_enabled = var.is_pv_encryption_in_transit_enabled

  dynamic "launch_options" {
    for_each = var.launch_options[*]
    iterator = lo
    content {
      boot_volume_type                    = lo.value.boot_volume_type
      firmware                            = lo.value.firmware
      is_consistent_volume_naming_enabled = lo.value.is_consistent_volume_naming_enabled
      is_pv_encryption_in_transit_enabled = lo.value.is_pv_encryption_in_transit_enabled
      network_type                        = lo.value.network_type
      remote_data_volume_type             = lo.value.remote_data_volume_type
    }
  }

  metadata = var.metadata

  dynamic "shape_config" {
    for_each = var.shape_config[*]
    iterator = sc
    content {
      baseline_ocpu_utilization = sc.value.baseline_ocpu_utilization
      memory_in_gbs             = sc.value.memory_in_gbs
      nvmes                     = sc.value.nvmes
      ocpus                     = sc.value.ocpus
      vcpus                     = sc.value.vcpus
    }
  }

  source_details {
    source_id               = var.source_details.source_id
    source_type             = var.source_details.source_type
    boot_volume_size_in_gbs = var.source_details.boot_volume_size_in_gbs
    boot_volume_vpus_per_gb = var.source_details.boot_volume_vpus_per_gb

    dynamic "instance_source_image_filter_details" {
      for_each = var.source_details.instance_source_image_filter_details[*]
      iterator = sifd
      content {
        compartment_id           = coalesce(sifd.value.compartment_id, var.compartment_id)
        defined_tags_filter      = sifd.value.defined_tags_filter
        operating_system         = sifd.value.operating_system
        operating_system_version = sifd.value.operating_system_version
      }
    }

    kms_key_id                      = var.source_details.kms_key_id
    is_preserve_boot_volume_enabled = var.source_details.is_preserve_boot_volume_enabled
  }

  preserve_boot_volume = var.preserve_boot_volume
  state                = var.state
}
