resource "oci_core_compute_host" "this" {
  compute_host_id           = var.compute_host_id
  compute_host_group_id     = var.compute_host_group_id
  configuration_action_type = var.configuration_action_type
}
