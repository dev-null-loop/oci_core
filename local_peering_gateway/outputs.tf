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
    compartment_id               = oci_core_local_peering_gateway.requestor.compartment_id
    display_name                 = oci_core_local_peering_gateway.requestor.display_name
    freeform_tags                = oci_core_local_peering_gateway.requestor.freeform_tags
    id                           = oci_core_local_peering_gateway.requestor.id
    is_cross_tenancy_peering     = oci_core_local_peering_gateway.requestor.is_cross_tenancy_peering
    peer_advertised_cidr         = oci_core_local_peering_gateway.requestor.peer_advertised_cidr
    peer_advertised_cidr_details = oci_core_local_peering_gateway.requestor.peer_advertised_cidr_details
    peer_id                      = oci_core_local_peering_gateway.requestor.peer_id
    peering_status               = oci_core_local_peering_gateway.requestor.peering_status
    peering_status_details       = oci_core_local_peering_gateway.requestor.peering_status_details
    route_table_id               = oci_core_local_peering_gateway.requestor.route_table_id
    state                        = oci_core_local_peering_gateway.requestor.state
    time_created                 = oci_core_local_peering_gateway.requestor.time_created
    vcn_id                       = oci_core_local_peering_gateway.requestor.vcn_id
  }
}

output "acceptor" {
  description = "Acceptor LPG attributes."
  value = {
    compartment_id               = oci_core_local_peering_gateway.acceptor.compartment_id
    display_name                 = oci_core_local_peering_gateway.acceptor.display_name
    freeform_tags                = oci_core_local_peering_gateway.acceptor.freeform_tags
    id                           = oci_core_local_peering_gateway.acceptor.id
    is_cross_tenancy_peering     = oci_core_local_peering_gateway.acceptor.is_cross_tenancy_peering
    peer_advertised_cidr         = oci_core_local_peering_gateway.acceptor.peer_advertised_cidr
    peer_advertised_cidr_details = oci_core_local_peering_gateway.acceptor.peer_advertised_cidr_details
    peer_id                      = oci_core_local_peering_gateway.acceptor.peer_id
    peering_status               = oci_core_local_peering_gateway.acceptor.peering_status
    peering_status_details       = oci_core_local_peering_gateway.acceptor.peering_status_details
    route_table_id               = oci_core_local_peering_gateway.acceptor.route_table_id
    state                        = oci_core_local_peering_gateway.acceptor.state
    time_created                 = oci_core_local_peering_gateway.acceptor.time_created
    vcn_id                       = oci_core_local_peering_gateway.acceptor.vcn_id
  }
}
