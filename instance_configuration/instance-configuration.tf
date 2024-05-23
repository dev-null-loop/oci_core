resource "oci_core_instance_configuration" "this" {
  for_each = var.instance_configuration_params

  compartment_id = var.compartment_id
  display_name   = each.value.display_name

  freeform_tags = merge(var.freeform_tags, var.isv_konfig_ver)

  instance_details {
    instance_type = each.value.instance_type

    block_volumes {
      attach_details {
        type         = each.value.bv_type
        is_read_only = each.value.bv_is_read_only
        is_shareable = each.value.bv_is_shareable
      }

      create_details {
        availability_domain = data.oci_identity_availability_domains.ads.availability_domains[each.value.ad - 1].name
        compartment_id      = var.compartment_id
        display_name        = each.value.bv_display_name
        kms_key_id          = each.value.bv_kms_key_id
        size_in_gbs         = each.value.bv_size

        freeform_tags = merge(var.freeform_tags, var.isv_konfig_ver)
      }
    }

    launch_details {
      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[each.value.ad - 1].name
      compartment_id      = var.compartment_id

      create_vnic_details {
        assign_public_ip = each.value.assign_public_ip
      }

      freeform_tags = merge(var.freeform_tags, var.isv_konfig_ver)

      metadata = {
        ssh_authorized_keys = var.ssh_public_key
      }

      shape = each.value.shape

      dynamic "shape_config" {
        for_each = length(regexall("(?i)(flex)", each.value.shape)) > 0 ? var.instance_configuration_params : {}
        content {
          memory_in_gbs = each.value.instance_shape_config_memory_in_gbs
          ocpus         = each.value.instance_shape_config_ocpus
        }
      }

      source_details {
        source_type             = "image"
        boot_volume_size_in_gbs = each.value.boot_volume_size
        image_id                = var.linux_images[each.value.os][var.region]
      }
    }
  }
}
