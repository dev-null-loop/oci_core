resource "oci_core_capture_filter" "this" {
  compartment_id = var.compartment_id
  filter_type    = var.filter_type
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  dynamic "flow_log_capture_filter_rules" {
    for_each = var.flow_log_capture_filter_rules != null ? [1] : []
    iterator = cfr
    content {
      destination_cidr = cfr.value.destination_cidr
      flow_log_type    = cfr.value.flow_log_type
      dynamic "icmp_options" {
	for_each = cf.value.icmp_options[*]
	iterator = io
	content {
	  type = io.value.type
	  code = io.value.code
	}
      }
      is_enabled    = cfr.value.is_enabled
      priority      = cfr.value.priority
      protocol      = cfr.value.protocol
      rule_action   = cfr.value.rule_action
      sampling_rate = cfr.value.sampling_rate
      source_cidr   = cfr.value.source_cidr
      dynamic "tcp_options" {
	for_each = cfr.value.tcp_options[*]
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
	for_each = cfr.value.udp_options[*]
	iterator = uo
	content {
	  dynamic "destination_port_range" {
	    for_each = uo.value.destination_port_range
	    iterator = dpr
	    content {
	      max = dpr.value.max
	      min = dpr.value.min
	    }
	    dynamic "source_port_range" {
	      for_each = uo.value.source_port_range
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
  freeform_tags = var.freeform_tags
  dynamic "vtap_capture_filter_rules" {
    for_each = var.vtap_capture_filter_rules != null ? [1] : []
    iterator = cfr
    content {
      traffic_direction = cfr.value.traffic_direction
      destination_cidr  = cfr.value.destination_cidr
      dynamic "icmp_options" {
	for_each = cfr.value.icmp_options[*]
	iterator = io
	content {
	  type = io.value.type
	  code = io.value.code
	}
      }
      protocol    = cfr.value.protocol
      rule_action = cfr.value.rules_action
      source_cidr = cfr.value.source_cidr
      dynamic "tcp_options" {
	for_each = cfr.value.tcp_options[*]
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
	for_each = cfr.value.udp_options[*]
	iterator = uo
	content {
	  dynamic "destination_port_range" {
	    for_each = uo.value.destination_port_range
	    iterator = dpr
	    content {
	      max = dpr.value.max
	      min = dpr.value.min
	    }
	    dynamic "source_port_range" {
	      for_each = uo.value.source_port_range
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
}
