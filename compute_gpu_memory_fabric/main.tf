resource "oci_core_compute_gpu_memory_fabric" "this" {
  compute_gpu_memory_fabric_id = var.compute_gpu_memory_fabric_id
  compartment_id               = var.compartment_id
  defined_tags                 = var.defined_tags
  display_name                 = var.display_name
  freeform_tags                = var.freeform_tags
  dynamic "memory_fabric_preferences" {
    for_each = var.memory_fabric_preferences[*]
    iterator = mfp
    content {
      customer_desired_firmware_bundle_id = mfp.value.customer_desired_firmware_bundle_id
      fabric_recycle_level                = mfp.value.fabric_recycle_level
    }
  }
}
