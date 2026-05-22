resource "oci_core_compute_gpu_memory_cluster" "this" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  compute_cluster_id  = var.compute_cluster_id
  defined_tags        = var.defined_tags
  display_name        = var.display_name
  freeform_tags       = var.freeform_tags
  dynamic "gpu_memory_cluster_scale_config" {
    for_each = var.gpu_memory_cluster_scale_config[*]
    iterator = gmcsc
    content {
      is_downsize_enabled = gmcsc.value.is_downsize_enabled
      is_upsize_enabled   = gmcsc.value.is_upsize_enabled
      target_size         = gmcsc.value.target_size
    }
  }
  gpu_memory_fabric_id      = var.gpu_memory_fabric_id
  instance_configuration_id = var.instance_configuration_id
  private_ip_ids            = var.private_ip_ids
  size                      = var.size
}
