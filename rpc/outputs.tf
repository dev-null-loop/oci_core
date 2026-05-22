output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the RPC."
  value       = oci_core_remote_peering_connection.this.id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment that contains the RPC."
  value       = oci_core_remote_peering_connection.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_remote_peering_connection.this.display_name
}

output "drg_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG that this RPC belongs to."
  value       = oci_core_remote_peering_connection.this.drg_id
}

output "is_cross_tenancy_peering" {
  description = "Whether the VCN at the other end of the peering is in a different tenancy."
  value       = oci_core_remote_peering_connection.this.is_cross_tenancy_peering
}

output "peer_id" {
  description = "If this RPC is peered, this value is the [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the other RPC."
  value       = oci_core_remote_peering_connection.this.peer_id
}

output "peer_region_name" {
  description = "If this RPC is peered, this value is the region that contains the other RPC."
  value       = oci_core_remote_peering_connection.this.peer_region_name
}

output "peer_tenancy_id" {
  description = "If this RPC is peered, this value is the [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the other RPC's tenancy."
  value       = oci_core_remote_peering_connection.this.peer_tenancy_id
}

output "peering_status" {
  description = "Whether the RPC is peered with another RPC."
  value       = oci_core_remote_peering_connection.this.peering_status
}

output "state" {
  description = "The RPC's current lifecycle state."
  value       = oci_core_remote_peering_connection.this.state
}

output "time_created" {
  description = "The date and time the RPC was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_remote_peering_connection.this.time_created
}
