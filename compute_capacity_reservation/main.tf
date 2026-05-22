resource "oci_core_compute_capacity_reservation" "this" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_id
  defined_tags        = var.defined_tags
  display_name        = var.display_name
  freeform_tags       = var.freeform_tags
  dynamic "instance_reservation_configs" {
    for_each = var.instance_reservation_configs
    iterator = irc
    content {
      dynamic "cluster_config" {
        for_each = irc.value.cluster_config[*]
        iterator = cc
        content {
          hpc_island_id     = cc.value.hpc_island_id
          network_block_ids = cc.value.network_block_ids
        }
      }
      cluster_placement_group_id = irc.value.cluster_placement_group_id
      fault_domain               = irc.value.fault_domain
      instance_shape             = irc.value.instance_shape
      dynamic "instance_shape_config" {
        for_each = irc.value.instance_shape_config[*]
        iterator = isc
        content {
          memory_in_gbs       = isc.value.memory_in_gbs
          ocpus               = isc.value.ocpus
          resource_management = isc.value.resource_management
        }
      }
      reserved_count = irc.value.reserved_count
    }
  }
  is_default_reservation = var.is_default_reservation
}
