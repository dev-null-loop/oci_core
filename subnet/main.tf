resource "oci_core_subnet" "this" {
  availability_domain        = var.availability_domain
  cidr_block                 = var.cidr_block
  compartment_id             = var.compartment_id
  defined_tags               = var.defined_tags
  dhcp_options_id            = var.dhcp_options_id
  display_name               = var.display_name
  dns_label                  = var.dns_label
  freeform_tags              = var.freeform_tags
  ipv6cidr_block             = var.ipv6cidr_block
  ipv6cidr_blocks            = var.ipv6cidr_blocks
  prohibit_internet_ingress  = var.prohibit_internet_ingress
  prohibit_public_ip_on_vnic = var.prohibit_public_ip_on_vnic
  route_table_id             = var.route_table_id
  security_list_ids          = var.security_list_ids
  vcn_id                     = var.vcn_id
  timeouts {
    create = "1m"
    delete = "1m"
  }
}
