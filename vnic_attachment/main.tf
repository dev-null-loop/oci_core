resource "oci_core_vnic_attachment" "this" {
  create_vnic_details {
    assign_ipv6ip                            = var.vnic_attachment_create_vnic_details_assign_ipv6ip
    assign_private_dns_record                = var.vnic_attachment_create_vnic_details_assign_private_dns_record
    assign_public_ip                         = var.vnic_attachment_create_vnic_details_assign_public_ip
    defined_tags                             = var.vnic_attachment_create_vnic_details_defined_tags
    display_name                             = var.vnic_attachment_create_vnic_details_display_name
    freeform_tags                            = var.vnic_attachment_create_vnic_details_freeform_tags
    hostname_label                           = var.vnic_attachment_create_vnic_details_hostname_label
    ipv6address_ipv6subnet_cidr_pair_details = var.vnic_attachment_create_vnic_details_ipv6address_ipv6subnet_cidr_pair_details
    nsg_ids                                  = var.vnic_attachment_create_vnic_details_nsg_ids
    private_ip                               = var.vnic_attachment_create_vnic_details_private_ip
    security_attributes                      = var.vnic_attachment_create_vnic_details_security_attributes
    skip_source_dest_check                   = var.vnic_attachment_create_vnic_details_skip_source_dest_check
    subnet_id                                = oci_core_subnet.test_subnet.id
    vlan_id                                  = oci_core_vlan.test_vlan.id
  }
  instance_id  = var.instance_id
  display_name = var.display_name
  nic_index    = var.nic_index
}
