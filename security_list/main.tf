resource "oci_core_default_security_list" "this" {
  manage_default_resource_id = var.default_security_list_id
}

resource "oci_core_security_list" "this" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.display_name
  defined_tags   = var.defined_tags
  freeform_tags  = var.freeform_tags

  dynamic "egress_security_rules" {
    for_each = var.egress_rules
    iterator = egress_rules

    content {
      stateless        = egress_rules.value.stateless
      protocol         = egress_rules.value.protocol
      destination      = egress_rules.value.destination
      destination_type = egress_rules.value.destination_type

      dynamic "tcp_options" {
        iterator = tcp_options
        for_each = egress_rules.value.tcp_options[*]
        content {
          max = tcp_options.value.max
          min = tcp_options.value.min
        }
      }

      dynamic "udp_options" {
        iterator = udp_options
        for_each = egress_rules.value.udp_options[*]
        content {
          max = udp_options.value.max
          min = udp_options.value.min
        }
      }

      dynamic "icmp_options" {
        iterator = icmp_options
        for_each = egress_rules.value.icmp_options[*]
        content {
          type = icmp_options.value.type
          code = icmp_options.value.code
        }
      }
    }
  }

  dynamic "ingress_security_rules" {
    for_each = var.ingress_rules
    iterator = ingress_rules

    content {
      stateless   = ingress_rules.value.stateless
      protocol    = ingress_rules.value.protocol
      source      = ingress_rules.value.source
      source_type = ingress_rules.value.source_type

      dynamic "tcp_options" {
        iterator = tcp_options
        for_each = ingress_rules.value.tcp_options[*]
        content {
          max = tcp_options.value.max
          min = tcp_options.value.min
        }
      }

      dynamic "udp_options" {
        iterator = udp_options
        for_each = ingress_rules.value.udp_options[*]
        content {
          max = udp_options.value.max
          min = udp_options.value.min
        }
      }

      dynamic "icmp_options" {
        iterator = icmp_options
        for_each = ingress_rules.value.icmp_options[*]
        content {
          type = icmp_options.value.type
          code = icmp_options.value.code
        }
      }
    }
  }
}
