data "oci_identity_availability_domains" "this" {
  compartment_id = var.compartment_id
}

locals {
  ads = data.oci_identity_availability_domains.this.availability_domains
}

resource "oci_core_instance_configuration" "this" {
  compartment_id = var.compartment_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags

  instance_details {
    instance_type = var.instance_type

    block_volumes {
      create_details {
        availability_domain = local.ads[var.availability_domain - 1].name
        compartment_id      = var.create_details.compartment_id
        display_name        = var.create_details.display_name
        kms_key_id          = var.create_details.kms_key_id
        size_in_gbs         = var.create_details.size_in_gbs
        freeform_tags       = var.create_details.freeform_tags
      }
    }
  }
}
# attach_details {
#		type         = each.value.bv_type
#		is_read_only = each.value.bv_is_read_only
#		is_shareable = each.value.bv_is_shareable
# }

# launch_details {
#   availability_domain = data.oci_identity_availability_domains.ads.availability_domains[each.value.ad - 1].name
#   compartment_id      = var.compartment_id

#   create_vnic_details {
#	assign_public_ip = each.value.assign_public_ip
#   }

#   freeform_tags = merge(var.freeform_tags, var.isv_konfig_ver)

#   metadata = {
#	ssh_authorized_keys = var.ssh_public_key
#   }

#   shape = each.value.shape

#   dynamic "shape_config" {
#	for_each = length(regexall("(?i)(flex)", each.value.shape)) > 0 ? var.instance_configuration_params : {}
#	content {
#	  memory_in_gbs = each.value.instance_shape_config_memory_in_gbs
#	  ocpus         = each.value.instance_shape_config_ocpus
#	}
#   }

#   source_details {
#	source_type             = var.source_type
#	boot_volume_size_in_gbs = each.value.boot_volume_size
#	image_id                = var.linux_images[each.value.os][var.region]
#   }
# }
