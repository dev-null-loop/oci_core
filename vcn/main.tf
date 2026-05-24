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
  count                      = var.empty_default_security_list ? 1 : 0
  manage_default_resource_id = oci_core_vcn.this.default_security_list_id
}

resource "oci_core_default_route_table" "this" {
  count                      = var.empty_default_route_table ? 1 : 0
  manage_default_resource_id = oci_core_vcn.this.default_route_table_id
}

resource "oci_core_default_dhcp_options" "this" {
  count                      = var.reset_default_dhcp_options ? 1 : 0
  manage_default_resource_id = oci_core_vcn.this.default_dhcp_options_id
  options {
    type        = "DomainNameServer"
    server_type = "VcnLocalPlusInternet"
  }
}
