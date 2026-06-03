resource "oci_core_default_dhcp_options" "this" {
  compartment_id             = var.compartment_id
  defined_tags               = var.defined_tags
  display_name               = var.display_name
  domain_name_type           = var.domain_name_type
  freeform_tags              = var.freeform_tags
  manage_default_resource_id = var.manage_default_resource_id
  dynamic "options" {
    for_each = var.options
    iterator = op
    content {
      custom_dns_servers  = op.value.custom_dns_servers
      search_domain_names = op.value.search_domain_names
      server_type         = op.value.server_type
      type                = op.value.type
    }
  }
}
