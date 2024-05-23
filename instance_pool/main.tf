data "oci_identity_availability_domains" "this" {
  compartment_id = var.compartment_id
}

locals {
  ads = data.oci_identity_availability_domains.this.availability_domains
}

resource "oci_core_instance_pool" "this" {
  compartment_id                  = var.compartment_id
  instance_configuration_id       = var.instance_configuration_id
  size                            = var.size
  defined_tags                    = var.defined_tags
  display_name                    = each.value.display_name
  freeform_tags                   = var.freeform_tags
  instance_display_name_formatter = var.instance_display_name_formatter
  instance_hostname_formatter     = var.instance_hostname_formatter

  placement_configurations {
    availability_domain = local.ads[var.availability_domain - 1].name
    primary_subnet_id   = var.primary_subnet_id
  }

  # dynamic "load_balancers" {
  #   for_each = var.instance_pool_lb_params
  #   content {
  #     backend_set_name = load_balancers.value.backend_set_name
  #     load_balancer_id = load_balancers.value.load_balancer_id
  #     port             = load_balancers.value.port
  #     vnic_selection   = load_balancers.value.vnic_selection
  #   }
  # }
}
