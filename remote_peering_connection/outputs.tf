output "peering_connections" {
  description = "The paired remote peering connections in requestor/acceptor order."
  value       = [oci_core_remote_peering_connection.requestor, oci_core_remote_peering_connection.acceptor]
}

output "requestor" {
  description = "The requestor-side remote peering connection."
  value       = oci_core_remote_peering_connection.requestor
}

output "requestor_id" {
  description = "The OCID of the requestor-side remote peering connection."
  value       = oci_core_remote_peering_connection.requestor.id
}

output "acceptor" {
  description = "The acceptor-side remote peering connection."
  value       = oci_core_remote_peering_connection.acceptor
}

output "acceptor_id" {
  description = "The OCID of the acceptor-side remote peering connection."
  value       = oci_core_remote_peering_connection.acceptor.id
}
