data "oci_identity_availability_domains" "these" {
  compartment_id = var.compartment_id
}

locals {
  ads = data.oci_identity_availability_domains.these.availability_domains
}

resource "oci_core_instance_configuration" "this" {
  compartment_id = var.compartment_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  instance_details {
    instance_type = var.instance_type
    block_volumes {
      attach_details {
	type         = var.attach_details.type
	is_read_only = var.attach_details.is_read_only
	is_shareable = var.attach_details.is_shareable
      }
      create_details {
	availability_domain = local.ads[var.availability_domain - 1].name
	compartment_id      = var.create_details.compartment_id
	display_name        = var.create_details.display_name
	kms_key_id          = var.create_details.kms_key_id
	size_in_gbs         = var.create_details.size_in_gbs
	freeform_tags       = var.create_details.freeform_tags
      }
    }
    launch_details {
      availability_domain  = local.ads[var.launch_details.availability_domain - 1].name
      compartment_id       = var.launch_details.compartment_id
      shape                = var.launch_details.shape
      dedicated_vm_host_id = var.launch_details.dedicated_vm_host_id
      defined_tags         = var.launch_details.defined_tags
      display_name         = var.launch_details.display_name
      extended_metadata    = var.launch_details.extended_metadata
      freeform_tags        = var.launch_details.freeform_tags
      dynamic "create_vnic_details" {
	for_each = var.launch_details.create_vnic_details[*]
	iterator = cvd
	content {
	  assign_public_ip       = cvd.assign_public_ip
	  display_name           = cvd.value.display_name
	  skip_source_dest_check = cvd.value.skip_source_dest_check
	}
      }

      #       # metadata = {
      #       #		ssh_authorized_keys = ""
      #       # }

      #       # dynamic "shape_config" {
      #       #		for_each = length(regexall("(?i)(flex)", each.value.shape)) > 0 ? var.instance_configuration_params : {}
      #       #		content {
      #       #		  memory_in_gbs = each.value.instance_shape_config_memory_in_gbs
      #       #		  ocpus         = each.value.instance_shape_config_ocpus
      #       #		}
      #       # }

      source_details {
	source_type             = var.launch_details.source_details.source_type
	image_id                = var.launch_details.source_details.image_id
	boot_volume_id          = var.launch_details.source_details.boot_volume_id
	boot_volume_size_in_gbs = var.launch_details.source_details.boot_volume_size_in_gbs
	boot_volume_vpus_per_gb = var.launch_details.source_details.boot_volume_vpus_per_gb
	kms_key_id              = null # var.launch_details.source_details.kms_key_id
	dynamic "instance_source_image_filter_details" {
	  for_each = var.launch_details.source_details.instance_source_image_filter_details[*]
	  iterator = iifd
	  content {
	    compartment_id           = iifd.value.compartment_id
	    defined_tags_filter      = iifd.value.defined_tags_filter
	    operating_system         = iifd.value.operating_system
	    operating_system_version = iifd.value.operating_system_version
	  }
	}
      }
    }
  }
}
