resource "oci_core_default_security_list" "this" {
  compartment_id             = var.compartment_id
  defined_tags               = var.defined_tags
  display_name               = var.display_name
  freeform_tags              = var.freeform_tags
  manage_default_resource_id = var.manage_default_resource_id
  dynamic "egress_security_rules" {
    for_each = var.egress_security_rules
    iterator = esr
    content {
      description      = esr.value.description
      destination      = esr.value.destination
      destination_type = esr.value.destination_type
      protocol         = esr.value.protocol
      stateless        = esr.value.stateless
      dynamic "icmp_options" {
        for_each = esr.value.icmp_options[*]
        iterator = io
        content {
          code = io.value.code
          type = io.value.type
        }
      }
      dynamic "tcp_options" {
        for_each = esr.value.tcp_options[*]
        iterator = to
        content {
          max = to.value.max
          min = to.value.min
          dynamic "source_port_range" {
            for_each = to.value.source_port_range[*]
            iterator = spr
            content {
              max = spr.value.max
              min = spr.value.min
            }
          }
        }
      }
      dynamic "udp_options" {
        for_each = esr.value.udp_options[*]
        iterator = uo
        content {
          max = uo.value.max
          min = uo.value.min
          dynamic "source_port_range" {
            for_each = uo.value.source_port_range[*]
            iterator = spr
            content {
              max = spr.value.max
              min = spr.value.min
            }
          }
        }
      }
    }
  }
  dynamic "ingress_security_rules" {
    for_each = var.ingress_security_rules
    iterator = isr
    content {
      description = isr.value.description
      protocol    = isr.value.protocol
      source      = isr.value.source
      source_type = isr.value.source_type
      stateless   = isr.value.stateless
      dynamic "icmp_options" {
        for_each = isr.value.icmp_options[*]
        iterator = io
        content {
          code = io.value.code
          type = io.value.type
        }
      }
      dynamic "tcp_options" {
        for_each = isr.value.tcp_options[*]
        iterator = to
        content {
          max = to.value.max
          min = to.value.min
          dynamic "source_port_range" {
            for_each = to.value.source_port_range[*]
            iterator = spr
            content {
              max = spr.value.max
              min = spr.value.min
            }
          }
        }
      }
      dynamic "udp_options" {
        for_each = isr.value.udp_options[*]
        iterator = uo
        content {
          max = uo.value.max
          min = uo.value.min
          dynamic "source_port_range" {
            for_each = uo.value.source_port_range[*]
            iterator = spr
            content {
              max = spr.value.max
              min = spr.value.min
            }
          }
        }
      }
    }
  }
}
