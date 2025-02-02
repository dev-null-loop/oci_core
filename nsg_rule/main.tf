resource "oci_core_network_security_group_security_rule" "this" {
  network_security_group_id = var.network_security_group_id
  direction                 = var.rules.direction
  protocol                  = var.rules.protocol
  description               = var.rules.description
  destination = (
    var.rules.direction == "EGRESS" ?
    var.rules.destination_type == "NETWORK_SECURITY_GROUP" ?
    var.network_security_group_ids[var.rules.destination] :
    var.rules.destination :
    null
  )
  destination_type = var.rules.direction == "EGRESS" ? var.rules.destination_type : null
  dynamic "icmp_options" {
    for_each = var.rules.icmp_options[*]
    iterator = io
    content {
      type = io.value.type
      code = io.value.code
    }
  }
  source = (
    var.rules.direction == "INGRESS" ?
    var.rules.source_type == "NETWORK_SECURITY_GROUP" ?
    var.network_security_group_ids[var.rules.source] :
    var.rules.source :
    null
  )
  source_type = var.rules.direction == "INGRESS" ? var.rules.source_type : null
  stateless   = var.rules.stateless
  dynamic "tcp_options" {
    for_each = var.rules.tcp_options[*]
    content {
      dynamic "destination_port_range" {
	for_each = tcp_options.value.destination_port_range[*]
	iterator = dpr
	content {
	  min = dpr.value.min
	  max = dpr.value.max
	}
      }
      dynamic "source_port_range" {
	for_each = tcp_options.value.source_port_range[*]
	iterator = spr
	content {
	  min = spr.value.min
	  max = spr.value.max
	}
      }
    }
  }
  dynamic "udp_options" {
    for_each = var.rules.udp_options[*]
    content {
      dynamic "destination_port_range" {
	for_each = udp_options.value.destination_port_range[*]
	iterator = dpr
	content {
	  min = dpr.value.min
	  max = dpr.value.max
	}
      }

      dynamic "source_port_range" {
	for_each = udp_options.value.source_port_range[*]
	iterator = spr
	content {
	  min = spr.value.min
	  max = spr.value.max
	}
      }
    }
  }
  # source = (
  #   var.rules.direction == "INGRESS" ?
  #   var.rules.source_type == "CIDR_BLOCK" ?
  #   var.rules.source :
  #   oci_core_network_security_group.this[var.rules.source].id :
  #   null
  # )
  # source_type = var.rules.direction == "INGRESS" ? var.rules.source_type : null

  # destination = (
  #   var.rules.direction == "EGRESS" ?
  #   var.rules.destination_type == "CIDR_BLOCK" ?
  #   var.rules.destination :
  #   oci_core_network_security_group.this[var.rules.destination].id :
  #   null
  # )
  # destination_type = var.rules.direction == "EGRESS" ? var.rules.destination_type : null
}
