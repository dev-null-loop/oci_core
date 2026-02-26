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
  compartment_id = var.tenancy_ocid
}

data "cloudinit_config" "this" {
  gzip          = false
  base64_encode = false
  for_each      = var.cloud_init
  dynamic "part" {
    for_each = var.cloud_init
    content {
      content_type = coalesce(part.value.content_type, "text/x-shellscript") # [WARNING]: Unhandled unknown content-type (text/plain) userdata: 'b'apiVersion: v1'...'
      filename     = basename(part.value.filename)
      content = (
	fileexists("${path.root}/${part.value.filename}") ?
	templatefile("${path.root}/${part.value.filename}", merge(part.value.vars, {})) :
	part.value.content != null ?
	templatestring(part.value.content, merge(part.value.vars, {})) :
	"null"
      )
      merge_type = "list(append)+dict(no_replace,recurse_list)+str(append)"
    }
  }
}

locals {
  ads = data.oci_identity_availability_domains.these.availability_domains
}

resource "oci_core_instance" "this" {
  availability_domain = local.ads[var.availability_domain - 1].name
  compartment_id      = var.compartment_id
  shape               = var.shape

  agent_config {
    are_all_plugins_disabled = var.agent_config.are_all_plugins_disabled
    is_management_disabled   = var.agent_config.is_management_disabled
    is_monitoring_disabled   = var.agent_config.is_monitoring_disabled
    dynamic "plugins_config" {
      for_each = coalesce(var.agent_config.plugins_config, [])
      content {
	desired_state = "ENABLED"
	name          = plugins_config.value
      }
    }
  }
  # availability_config {
  #   is_live_migration_preferred = var.instance_availability_config_is_live_migration_preferred
  #   recovery_action             = var.instance_availability_config_recovery_action
  # }
  # cluster_placement_group_id = oci_identity_group.test_group.id
  # compute_cluster_id         = oci_core_compute_cluster.test_compute_cluster.id
  # compute_host_group_id      = oci_core_compute_host_group.test_compute_host_group.id
  create_vnic_details {
    assign_ipv6ip          = var.create_vnic_details.assign_ipv6ip
    assign_public_ip       = var.create_vnic_details.assign_public_ip
    defined_tags           = var.create_vnic_details.defined_tags
    display_name           = var.create_vnic_details.display_name
    freeform_tags          = var.create_vnic_details.freeform_tags
    hostname_label         = var.create_vnic_details.hostname_label
    nsg_ids                = var.create_vnic_details.nsg_ids
    private_ip             = var.create_vnic_details.private_ip
    skip_source_dest_check = var.create_vnic_details.skip_source_dest_check
    subnet_id              = var.create_vnic_details.subnet_id
  }
  dedicated_vm_host_id = var.dedicated_vm_host_id
  defined_tags         = var.defined_tags
  display_name         = var.display_name
  # extended_metadata = {
  #   some_string   = "stringA"
  #   nested_object = "{\"some_string\": \"stringB\", \"object\": {\"some_string\": \"stringC\"}}"
  # }
  fault_domain              = format("FAULT-DOMAIN-%s", var.fault_domain)
  freeform_tags             = var.freeform_tags
  hostname_label            = var.instance_hostname_label
  instance_configuration_id = var.instance_configuration_id
  instance_options {
    are_legacy_imds_endpoints_disabled = var.are_legacy_imds_endpoints_disabled
  }
  # ipxe_script = var.instance_ipxe_script
  is_pv_encryption_in_transit_enabled = var.is_pv_encryption_in_transit_enabled
  # launch_options {
  #   boot_volume_type                    = var.instance_launch_options_boot_volume_type
  #   firmware                            = var.instance_launch_options_firmware
  #   is_consistent_volume_naming_enabled = var.instance_launch_options_is_consistent_volume_naming_enabled
  #   is_pv_encryption_in_transit_enabled = var.instance_launch_options_is_pv_encryption_in_transit_enabled
  #   network_type                        = var.instance_launch_options_network_type
  #   remote_data_volume_type             = var.instance_launch_options_remote_data_volume_type
  # }
  metadata = {
    ssh_authorized_keys = var.ssh_public_keys
    user_data           = base64encode(join("", [for k, v in var.cloud_init : data.cloudinit_config.this[k].rendered]))
    # user_data           = join("", [for k, v in var.cloud_init : data.cloudinit_config.this[k].rendered])
    # user_data           = join("", [for k, v in var.cloud_init : base64encode(data.cloudinit_config.this[k].rendered)])
    # user_data           = base64encode(data.cloudinit_config.this.rendered)
  }
  dynamic "shape_config" {
    for_each = var.shape_config[*]
    content {
      baseline_ocpu_utilization = var.shape_config.baseline_ocpu_utilization
      memory_in_gbs             = var.shape_config.memory_in_gbs
      nvmes                     = var.shape_config.nvmes
      ocpus                     = var.shape_config.ocpus
      vcpus                     = var.shape_config.vcpus
    }
  }
  source_details {
    source_id               = var.source_details.source_id
    source_type             = var.source_details.source_type
    boot_volume_size_in_gbs = var.source_details.boot_volume_size_in_gbs
    boot_volume_vpus_per_gb = var.source_details.boot_volume_vpus_per_gb
    # instance_source_image_filter_details {
    #   compartment_id           = var.compartment_id
    #   defined_tags_filter      = var.instance_source_details_instance_source_image_filter_details_defined_tags_filter
    #   operating_system         = var.instance_source_details_instance_source_image_filter_details_operating_system
    #   operating_system_version = var.instance_source_details_instance_source_image_filter_details_operating_system_version
    # }
    kms_key_id = var.source_details.kms_key_id
  }
  preserve_boot_volume = var.preserve_boot_volume
  state                = var.state
}
