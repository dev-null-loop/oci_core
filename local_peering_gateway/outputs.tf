output "ids" {
  value = {
    requestor = oci_core_local_peering_gateway.requestor.id
    acceptor  = oci_core_local_peering_gateway.acceptor.id
  }
}
