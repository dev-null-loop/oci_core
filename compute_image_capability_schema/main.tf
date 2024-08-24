resource "oci_core_compute_image_capability_schema" "this" {
  compartment_id                                      = var.compartment_id
  compute_global_image_capability_schema_version_name = var.compute_global_image_capability_schema_version_name
  image_id                                            = var.image_id
  defined_tags                                        = var.defined_tags
  display_name                                        = var.display_name
  freeform_tags                                       = var.freeform_tags

  # if using var as key in map, enclose in parenthesis
  schema_data = {
    for k, v in var.schema_data : (k) => jsonencode(v)
  }
}
