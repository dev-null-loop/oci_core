resource "oci_core_dedicated_vm_host" "this" {
  availability_domain          = var.availability_domain
  capacity_config              = var.capacity_config
  compartment_id               = var.compartment_id
  dedicated_vm_host_shape      = var.dedicated_vm_host_shape
  defined_tags                 = var.defined_tags
  display_name                 = var.display_name
  fault_domain                 = var.fault_domain
  freeform_tags                = var.freeform_tags
  is_memory_encryption_enabled = var.is_memory_encryption_enabled
  dynamic "placement_constraint_details" {
    for_each = var.placement_constraint_details[*]
    iterator = pcd
    content {
      compute_bare_metal_host_id = pcd.value.compute_bare_metal_host_id
      type                       = pcd.value.type
    }
  }
}
