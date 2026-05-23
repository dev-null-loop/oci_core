resource "time_sleep" "dns_resolver_lookup" {
  count           = var.lookup_dns_resolver_id ? 1 : 0
  create_duration = var.dns_resolver_lookup_wait_duration
  depends_on      = [oci_core_vcn.this]
}

data "oci_core_vcn_dns_resolver_association" "this" {
  count  = var.lookup_dns_resolver_id ? 1 : 0
  vcn_id = oci_core_vcn.this.id
  depends_on = [
    time_sleep.dns_resolver_lookup
  ]
}

resource "oci_core_vcn" "this" {
  compartment_id = var.compartment_id
  dynamic "byoipv6cidr_details" {
    for_each = var.byoipv6cidr_details
    iterator = bd
    content {
      byoipv6range_id = bd.value.byoipv6range_id
      ipv6cidr_block  = bd.value.ipv6cidr_block
    }
  }
  cidr_blocks                      = var.cidr_blocks
  defined_tags                     = var.defined_tags
  display_name                     = var.display_name
  dns_label                        = var.dns_label
  freeform_tags                    = var.freeform_tags
  ipv6private_cidr_blocks          = var.ipv6private_cidr_blocks
  is_ipv6enabled                   = var.is_ipv6enabled
  is_oracle_gua_allocation_enabled = var.is_oracle_gua_allocation_enabled
  security_attributes              = var.security_attributes
}

resource "oci_core_default_security_list" "this" {
  count                      = var.manage_default_security_list ? 1 : 0
  manage_default_resource_id = oci_core_vcn.this.default_security_list_id
  defined_tags               = var.default_security_list.defined_tags
  display_name               = var.default_security_list.display_name
  freeform_tags              = var.default_security_list.freeform_tags

  dynamic "egress_security_rules" {
    for_each = var.default_security_list.egress_rules
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
	  type = io.value.type
	  code = io.value.code
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
    for_each = var.default_security_list.ingress_rules
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
	  type = io.value.type
	  code = io.value.code
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
