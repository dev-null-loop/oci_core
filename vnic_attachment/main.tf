resource "oci_core_vnic_attachment" "this" {
  create_vnic_details {
    assign_ipv6ip                            = var.create_vnic_details.assign_ipv6ip
    assign_private_dns_record                = var.create_vnic_details.assign_private_dns_record
    assign_public_ip                         = var.create_vnic_details.assign_public_ip
    defined_tags                             = var.create_vnic_details.defined_tags
    display_name                             = var.create_vnic_details.display_name
    freeform_tags                            = var.create_vnic_details.freeform_tags
    hostname_label                           = var.create_vnic_details.hostname_label
    ipv6address_ipv6subnet_cidr_pair_details = var.create_vnic_details.ipv6address_ipv6subnet_cidr_pair_details
    nsg_ids                                  = var.create_vnic_details.nsg_ids
    private_ip                               = var.create_vnic_details.private_ip
    security_attributes                      = var.create_vnic_details.security_attributes
    skip_source_dest_check                   = var.create_vnic_details.skip_source_dest_check
    subnet_id                                = var.create_vnic_details.subnet_id
    vlan_id                                  = var.create_vnic_details.vlan_id
  }
  instance_id  = var.instance_id
  display_name = var.display_name
  nic_index    = var.nic_index
}
