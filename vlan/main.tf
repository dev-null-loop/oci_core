resource "oci_core_vlan" "this" {
  cidr_block          = var.cidr_block
  compartment_id      = var.compartment_id
  vcn_id              = var.vcn_di
  availability_domain = var.availability_domain
  defined_tags        = var.defined_tags
  display_name        = var.display_name
  freeform_tags       = var.freeform_tags
  nsg_ids             = var.nsg_ids
  route_table_id      = var.route_table_id
  vlan_tag            = var.vlan_tag
}
