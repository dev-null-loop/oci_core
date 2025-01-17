data "oci_identity_availability_domains" "these" {
  compartment_id = var.compartment_id
}

locals {
  ads = data.oci_identity_availability_domains.these.availability_domains
}

resource "oci_core_instance_pool" "this" {
  compartment_id                  = var.compartment_id
  instance_configuration_id       = var.instance_configuration_id
  size                            = var.size
  defined_tags                    = var.defined_tags
  display_name                    = var.display_name
  freeform_tags                   = var.freeform_tags
  instance_display_name_formatter = var.instance_display_name_formatter
  instance_hostname_formatter     = var.instance_hostname_formatter

  placement_configurations {
    availability_domain = local.ads[var.availability_domain - 1].name
    fault_domains       = var.fault_domains

    # primary_vnic_subnets {
    #   subnet_id = oci_core_subnet.test_subnet.id
    #   ipv6address_ipv6subnet_cidr_pair_details {
    #	ipv6subnet_cidr = var.instance_pool_placement_configurations_primary_vnic_subnets_ipv6address_ipv6subnet_cidr_pair_details_ipv6subnet_cidr
    #   }
    #   is_assign_ipv6ip = var.instance_pool_placement_configurations_primary_vnic_subnets_is_assign_ipv6ip
    # }
    # secondary_vnic_subnets {
    #   subnet_id    = oci_core_subnet.test_subnet.id
    #   display_name = var.instance_pool_placement_configurations_secondary_vnic_subnets_display_name
    #   ipv6address_ipv6subnet_cidr_pair_details {
    #	ipv6subnet_cidr = var.instance_pool_placement_configurations_secondary_vnic_subnets_ipv6address_ipv6subnet_cidr_pair_details_ipv6subnet_cidr
    #   }
    #   is_assign_ipv6ip = var.instance_pool_placement_configurations_secondary_vnic_subnets_is_assign_ipv6ip
    # }
  }

  dynamic "load_balancers" {
    for_each = var.load_balancers[*]
    content {
      backend_set_name = var.load_balancers.backend_set_name
      load_balancer_id = var.load_balancers.load_balancer_id
      port             = var.load_balancers.port
      vnic_selection   = var.load_balancers.vnic_selection
    }
  }
}
