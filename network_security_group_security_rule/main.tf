resource "oci_core_network_security_group_security_rule" "this" {
  network_security_group_id = var.network_security_group_id
  description               = var.description
  destination               = var.destination
  destination_type          = var.destination_type
  direction                 = var.direction
  dynamic "icmp_options" {
    for_each = var.icmp_options[*]
    iterator = io
    content {
      code = io.value.code
      type = io.value.type
    }
  }
  protocol    = var.protocol
  source      = var.rule_source
  source_type = var.rule_source_type
  stateless   = var.stateless
  dynamic "tcp_options" {
    for_each = var.tcp_options[*]
    iterator = to
    content {
      dynamic "destination_port_range" {
        for_each = to.value.destination_port_range[*]
        iterator = dpr
        content {
          max = dpr.value.max
          min = dpr.value.min
        }
      }
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
    for_each = var.udp_options[*]
    iterator = uo
    content {
      dynamic "destination_port_range" {
        for_each = uo.value.destination_port_range[*]
        iterator = dpr
        content {
          max = dpr.value.max
          min = dpr.value.min
        }
      }
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
