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
      fault_domain         = format("FAULT-DOMAIN-%s", var.launch_details.fault_domain)
      freeform_tags        = var.launch_details.freeform_tags
      create_vnic_details {
	assign_public_ip = false
      }
      metadata = {
	ssh_authorized_keys = ""
      }

      # dynamic "shape_config" {
      #		for_each = length(regexall("(?i)(flex)", each.value.shape)) > 0 ? var.instance_configuration_params : {}
      #		content {
      #		  memory_in_gbs = each.value.instance_shape_config_memory_in_gbs
      #		  ocpus         = each.value.instance_shape_config_ocpus
      #		}
      # }

      source_details {
	source_type             = var.source_details.source_type
	boot_volume_id          = var.source_details.boot_volume_id
	boot_volume_size_in_gbs = var.source_details.boot_volume_size_in_gbs
	boot_volume_vpus_per_gb = var.source_details.boot_volume_vpus_per_gb
	image_id                = var.source_details.image_id
	kms_key_id              = var.source_details.kms_key_id
	dynamic "instance_source_image_filter_details" {
	  for_each = var.source_details.instance_source_image_filter_details[*]
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
