resource "oci_core_instance_pool" "this" {
  compartment_id                  = var.compartment_id
  instance_configuration_id       = var.instance_configuration_id
  size                            = var.size
  defined_tags                    = var.defined_tags
  display_name                    = var.display_name
  freeform_tags                   = var.freeform_tags
  instance_display_name_formatter = var.instance_display_name_formatter
  instance_hostname_formatter     = var.instance_hostname_formatter
  dynamic "placement_configurations" {
    for_each = var.placement_configurations
    iterator = pc
    content {
      availability_domain = pc.value.availability_domain
      compute_cluster_id  = pc.value.compute_cluster_id
      fault_domains       = pc.value.fault_domains
      dynamic "primary_vnic_subnets" {
        for_each = pc.value.primary_vnic_subnets[*]
        iterator = pvs
        content {
          subnet_id = pvs.value.subnet_id
          dynamic "ipv6address_ipv6subnet_cidr_pair_details" {
            for_each = pvs.value.ipv6address_ipv6subnet_cidr_pair_details
            iterator = iicpd
            content {
              ipv6subnet_cidr = iicpd.value.ipv6subnet_cidr
            }
          }
          is_assign_ipv6ip = pvs.value.is_assign_ipv6ip
        }
      }
      dynamic "secondary_vnic_subnets" {
        for_each = pc.value.secondary_vnic_subnets
        iterator = svs
        content {
          subnet_id    = svs.value.subnet_id
          display_name = svs.value.display_name
          dynamic "ipv6address_ipv6subnet_cidr_pair_details" {
            for_each = svs.value.ipv6address_ipv6subnet_cidr_pair_details
            iterator = iicpd
            content {
              ipv6subnet_cidr = iicpd.value.ipv6subnet_cidr
            }
          }
          is_assign_ipv6ip = svs.value.is_assign_ipv6ip
        }
      }
    }
  }
  dynamic "lifecycle_management" {
    for_each = var.lifecycle_management[*]
    iterator = lm
    content {
      lifecycle_actions {
        dynamic "pre_termination" {
          for_each = lm.value.lifecycle_actions.pre_termination[*]
          iterator = pt
          content {
            is_enabled = pt.value.is_enabled
            on_timeout {
              preserve_block_volume_mode = pt.value.on_timeout.preserve_block_volume_mode
              preserve_boot_volume_mode  = pt.value.on_timeout.preserve_boot_volume_mode
            }
            timeout = pt.value.timeout
          }
        }
      }
    }
  }
  dynamic "load_balancers" {
    for_each = var.load_balancers
    iterator = lb
    content {
      backend_set_name = lb.value.backend_set_name
      load_balancer_id = lb.value.load_balancer_id
      port             = lb.value.port
      vnic_selection   = lb.value.vnic_selection
    }
  }
  state = var.state
}
