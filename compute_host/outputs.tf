output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the Customer-unique host"
  value       = oci_core_compute_host.this.id
}

output "additional_data" {
  description = "Additional data that can be exposed to the customer."
  value       = oci_core_compute_host.this.additional_data
}

output "availability_domain" {
  description = "The availability domain of the compute host."
  value       = oci_core_compute_host.this.availability_domain
}

output "capacity_reservation_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the Capacity Reserver that is currently on host"
  value       = oci_core_compute_host.this.capacity_reservation_id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the compartment. This should always be the root compartment."
  value       = oci_core_compute_host.this.compartment_id
}

output "compute_host_group_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the Customer-unique host group associated with the Compute Bare Metal Host."
  value       = oci_core_compute_host.this.compute_host_group_id
}

output "configuration_action_type" {
  description = "The configuration action that last occurred on the host if pinning its firmware with a host group."
  value       = oci_core_compute_host.this.configuration_action_type
}

output "configuration_data" {
  description = "Compute Host Configuration Data"
  value       = oci_core_compute_host.this.configuration_data
}

output "configuration_state" {
  description = "Configuration state of the Compute Bare Metal Host."
  value       = oci_core_compute_host.this.configuration_state
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_compute_host.this.display_name
}

output "fault_domain" {
  description = "The Fault domain of the host."
  value       = oci_core_compute_host.this.fault_domain
}

output "firmware_bundle_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the Customer-unique firmware bundle associated with the Host."
  value       = oci_core_compute_host.this.firmware_bundle_id
}

output "gpu_memory_fabric_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for Customer-unique GPU Memory Fabric"
  value       = oci_core_compute_host.this.gpu_memory_fabric_id
}

output "health" {
  description = "The healthy state of the host"
  value       = oci_core_compute_host.this.health
}

output "hpc_island_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for Customer-unique HPC Island"
  value       = oci_core_compute_host.this.hpc_island_id
}

output "instance_id" {
  description = "The public [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the Virtual Machine or Bare Metal instance"
  value       = oci_core_compute_host.this.instance_id
}

output "lifecycle_details" {
  description = "A free-form description detailing why the host is in its current state."
  value       = oci_core_compute_host.this.lifecycle_details
}

output "local_block_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for Customer-unique Local Block"
  value       = oci_core_compute_host.this.local_block_id
}

output "network_block_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for Customer-unique Network Block"
  value       = oci_core_compute_host.this.network_block_id
}

output "platform" {
  description = "The platform of the host"
  value       = oci_core_compute_host.this.platform
}

output "recycle_details" {
  description = "Shows details about the last recycle performed on this host."
  value       = oci_core_compute_host.this.recycle_details
}

output "shape" {
  description = "The shape of host"
  value       = oci_core_compute_host.this.shape
}

output "state" {
  description = "The lifecycle state of the host"
  value       = oci_core_compute_host.this.state
}

output "time_configuration_check" {
  description = "The date and time that the compute bare metal host configuration check was updated, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_compute_host.this.time_configuration_check
}

output "time_created" {
  description = "The date and time that the compute host record was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_compute_host.this.time_created
}

output "time_updated" {
  description = "The date and time that the compute host record was updated, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_compute_host.this.time_updated
}
