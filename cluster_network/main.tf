resource "oci_core_cluster_network" "this" {
  dynamic "cluster_configuration" {
    for_each = var.cluster_configuration[*]
    iterator = cc
    content {
      hpc_island_id     = cc.value.hpc_island_id
      network_block_ids = cc.value.network_block_ids
    }
  }
  compartment_id = var.compartment_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  dynamic "instance_pools" {
    for_each = var.instance_pools
    iterator = ip
    content {
      defined_tags              = ip.value.defined_tags
      display_name              = ip.value.display_name
      freeform_tags             = ip.value.freeform_tags
      instance_configuration_id = ip.value.instance_configuration_id
      size                      = ip.value.size
    }
  }
  placement_configuration {
    availability_domain  = var.placement_configuration.availability_domain
    placement_constraint = var.placement_configuration.placement_constraint
    primary_subnet_id    = var.placement_configuration.primary_subnet_id
    dynamic "primary_vnic_subnets" {
      for_each = var.placement_configuration.primary_vnic_subnets[*]
      iterator = pvs
      content {
        dynamic "ipv6address_ipv6subnet_cidr_pair_details" {
          for_each = pvs.value.ipv6address_ipv6subnet_cidr_pair_details
          iterator = iicpd
          content {
            ipv6subnet_cidr = iicpd.value.ipv6subnet_cidr
          }
        }
        is_assign_ipv6ip = pvs.value.is_assign_ipv6ip
        subnet_id        = pvs.value.subnet_id
      }
    }
    dynamic "secondary_vnic_subnets" {
      for_each = var.placement_configuration.secondary_vnic_subnets
      iterator = svs
      content {
        display_name = svs.value.display_name
        dynamic "ipv6address_ipv6subnet_cidr_pair_details" {
          for_each = svs.value.ipv6address_ipv6subnet_cidr_pair_details
          iterator = iicpd
          content {
            ipv6subnet_cidr = iicpd.value.ipv6subnet_cidr
          }
        }
        is_assign_ipv6ip = svs.value.is_assign_ipv6ip
        subnet_id        = svs.value.subnet_id
      }
    }
  }
}
