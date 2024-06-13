output "peering_connections" {
  value = [oci_core_remote_peering_connection.requestor, oci_core_remote_peering_connection.acceptor]
}
