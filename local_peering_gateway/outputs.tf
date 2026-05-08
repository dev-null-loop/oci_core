output "ids" {
  description = "OCIDs of both LPG resources."
  value = {
    requestor = oci_core_local_peering_gateway.requestor.id
    acceptor  = oci_core_local_peering_gateway.acceptor.id
  }
}

output "requestor" {
  description = "Requestor LPG attributes."
  value = {
    id             = oci_core_local_peering_gateway.requestor.id
    vcn_id         = oci_core_local_peering_gateway.requestor.vcn_id
    display_name   = oci_core_local_peering_gateway.requestor.display_name
    route_table_id = oci_core_local_peering_gateway.requestor.route_table_id
  }
}

output "acceptor" {
  description = "Acceptor LPG attributes."
  value = {
    id             = oci_core_local_peering_gateway.acceptor.id
    vcn_id         = oci_core_local_peering_gateway.acceptor.vcn_id
    display_name   = oci_core_local_peering_gateway.acceptor.display_name
    route_table_id = oci_core_local_peering_gateway.acceptor.route_table_id
  }
}
