output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the cluster network."
  value       = oci_core_cluster_network.this.id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the cluster network."
  value       = oci_core_cluster_network.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_cluster_network.this.display_name
}

output "hpc_island_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the HPC island used by the cluster network."
  value       = oci_core_cluster_network.this.hpc_island_id
}

output "instance_pools" {
  description = "The instance pools in the cluster network."
  value       = oci_core_cluster_network.this.instance_pools
}

output "network_block_ids" {
  description = "The list of network block OCIDs of the HPC island."
  value       = oci_core_cluster_network.this.network_block_ids
}

output "placement_configuration" {
  description = "The location for where the instance pools in a cluster network will place instances."
  value       = oci_core_cluster_network.this.placement_configuration
}

output "state" {
  description = "The current state of the cluster network."
  value       = oci_core_cluster_network.this.state
}

output "time_created" {
  description = "The date and time the resource was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_cluster_network.this.time_created
}

output "time_updated" {
  description = "The date and time the resource was updated, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_cluster_network.this.time_updated
}
