resource "oci_core_vtap" "this" {
  capture_filter_id                 = var.capture_filter_id
  compartment_id                    = var.compartment_id
  source_id                         = var.source_id
  vcn_id                            = var.vcn_id
  defined_tags                      = var.defined_tags
  display_name                      = var.display_name
  encapsulation_protocol            = var.encapsulation_protocol
  freeform_tags                     = var.freeform_tags
  is_vtap_enabled                   = var.is_vtap_enabled
  max_packet_size                   = var.max_packet_size
  source_private_endpoint_ip        = var.source_private_endpoint_ip
  source_private_endpoint_subnet_id = var.source_private_endpoint_subnet_id
  source_type                       = var.vtap_source_type
  target_id                         = var.target_id
  target_ip                         = var.target_ip
  target_type                       = var.target_type
  traffic_mode                      = var.traffic_mode
  vxlan_network_identifier          = var.vxlan_network_identifier
}
