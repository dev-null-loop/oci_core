resource "oci_core_network_security_group" "this" {
  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
}

resource "oci_core_network_security_group_security_rule" "this" {
  for_each                  = var.rules
  network_security_group_id = oci_core_network_security_group.this.id
  direction                 = each.value.direction
  protocol                  = each.value.protocol
  description               = each.value.description
  destination = (
    each.value.direction == "EGRESS" ?
    each.value.destination_type == "NETWORK_SECURITY_GROUP" ?
    oci_core_network_security_group.this[each.value.destination].id :
    each.value.destination :
    null
  )
  destination_type = each.value.direction == "EGRESS" ? each.value.destination_type : null
  dynamic "icmp_options" {
    for_each = each.value.icmp_options[*]
    iterator = io
    content {
      type = io.value.type
      code = io.value.code
    }
  }
  source = (
    each.value.direction == "INGRESS" ?
    each.value.source_type == "NETWORK_SECURITY_GROUP" ?
    oci_core_network_security_group.this[each.value.source].id :
    each.value.source :
    null
  )
  source_type = each.value.direction == "INGRESS" ? each.value.source_type : null
  stateless   = each.value.stateless
  dynamic "tcp_options" {
    for_each = each.value.tcp_options[*]
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
    for_each = each.value.udp_options[*]
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
  #   each.value.direction == "INGRESS" ?
  #   each.value.source_type == "CIDR_BLOCK" ?
  #   each.value.source :
  #   oci_core_network_security_group.this[each.value.source].id :
  #   null
  # )
  # source_type = each.value.direction == "INGRESS" ? each.value.source_type : null

  # destination = (
  #   each.value.direction == "EGRESS" ?
  #   each.value.destination_type == "CIDR_BLOCK" ?
  #   each.value.destination :
  #   oci_core_network_security_group.this[each.value.destination].id :
  #   null
  # )
  # destination_type = each.value.direction == "EGRESS" ? each.value.destination_type : null
}
