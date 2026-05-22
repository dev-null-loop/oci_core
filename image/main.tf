resource "oci_core_image" "this" {
  compartment_id = var.compartment_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  dynamic "image_source_details" {
    for_each = var.image_source_details[*]
    iterator = isd
    content {
      bucket_name              = isd.value.bucket_name
      namespace_name           = isd.value.namespace_name
      object_name              = isd.value.object_name
      operating_system         = isd.value.operating_system
      operating_system_version = isd.value.operating_system_version
      source_image_type        = isd.value.source_image_type
      source_type              = isd.value.source_type
      source_uri               = isd.value.source_uri
    }
  }
  instance_id = var.instance_id
  launch_mode = var.launch_mode
}
