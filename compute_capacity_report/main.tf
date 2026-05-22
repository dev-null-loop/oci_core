resource "oci_core_compute_capacity_report" "this" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  dynamic "shape_availabilities" {
    for_each = var.shape_availabilities
    iterator = sa
    content {
      fault_domain   = sa.value.fault_domain
      instance_shape = sa.value.instance_shape
      dynamic "instance_shape_config" {
        for_each = sa.value.instance_shape_config[*]
        iterator = isc
        content {
          baseline_ocpu_utilization = isc.value.baseline_ocpu_utilization
          memory_in_gbs             = isc.value.memory_in_gbs
          nvmes                     = isc.value.nvmes
          ocpus                     = isc.value.ocpus
        }
      }
    }
  }
}
