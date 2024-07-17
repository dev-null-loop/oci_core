resource "oci_core_dhcp_options" "this" {
  compartment_id   = var.compartment_id
  vcn_id           = var.vcn_id
  defined_tags     = var.defined_tags
  display_name     = var.display_name
  domain_name_type = var.domain_name_type
  freeform_tags    = var.freeform_tags

  options {
    type               = "DomainNameServer"
    server_type        = "CustomDnsServer"
    custom_dns_servers = ["192.168.0.2", "192.168.0.11", "192.168.0.19"]
  }

  options {
    type                = "SearchDomain"
    search_domain_names = ["test.com"]
  }
}
