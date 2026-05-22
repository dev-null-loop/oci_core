output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the Customer-unique GPU memory fabric"
  value       = oci_core_compute_gpu_memory_fabric.this.id
}

output "additional_data" {
  description = "Additional data that can be exposed to the customer."
  value       = oci_core_compute_gpu_memory_fabric.this.additional_data
}

output "available_host_count" {
  description = "The total number of available bare metal hosts located in this compute GPU memory fabric."
  value       = oci_core_compute_gpu_memory_fabric.this.available_host_count
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the compartment. This should always be the root compartment."
  value       = oci_core_compute_gpu_memory_fabric.this.compartment_id
}

output "compute_hpc_island_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for Customer-unique HPC Island"
  value       = oci_core_compute_gpu_memory_fabric.this.compute_hpc_island_id
}

output "compute_local_block_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for Customer-unique Local Block"
  value       = oci_core_compute_gpu_memory_fabric.this.compute_local_block_id
}

output "compute_network_block_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for Customer-unique Network Block"
  value       = oci_core_compute_gpu_memory_fabric.this.compute_network_block_id
}

output "current_firmware_bundle_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for current firmware bundle"
  value       = oci_core_compute_gpu_memory_fabric.this.current_firmware_bundle_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_compute_gpu_memory_fabric.this.display_name
}

output "fabric_health" {
  description = "The health state of the GPU memory fabric"
  value       = oci_core_compute_gpu_memory_fabric.this.fabric_health
}

output "firmware_update_reason" {
  description = "The reason for updating firmware bundle version of the GPU memory fabric."
  value       = oci_core_compute_gpu_memory_fabric.this.firmware_update_reason
}

output "firmware_update_state" {
  description = "The state of Memory Fabric Firmware update"
  value       = oci_core_compute_gpu_memory_fabric.this.firmware_update_state
}

output "healthy_host_count" {
  description = "The total number of healthy bare metal hosts located in this compute GPU memory fabric."
  value       = oci_core_compute_gpu_memory_fabric.this.healthy_host_count
}

output "host_platform_name" {
  description = "The host platform identifier used for bundle queries"
  value       = oci_core_compute_gpu_memory_fabric.this.host_platform_name
}

output "memory_fabric_preferences" {
  description = "The preference object specified by customer. Contains customerDesiredFirmwareBundleId, fabricRecycleLevel."
  value       = oci_core_compute_gpu_memory_fabric.this.memory_fabric_preferences
}

output "state" {
  description = "The lifecycle state of the GPU memory fabric"
  value       = oci_core_compute_gpu_memory_fabric.this.state
}

output "switch_platform_name" {
  description = "The switch platform identifier used for bundle queries"
  value       = oci_core_compute_gpu_memory_fabric.this.switch_platform_name
}

output "system_tags" {
  description = "Usage of system tag keys. These predefined keys are scoped to namespaces. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_core_compute_gpu_memory_fabric.this.system_tags
}

output "target_firmware_bundle_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for targeted firmware bundle"
  value       = oci_core_compute_gpu_memory_fabric.this.target_firmware_bundle_id
}

output "time_created" {
  description = "The date and time that the compute GPU memory fabric record was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_compute_gpu_memory_fabric.this.time_created
}

output "total_host_count" {
  description = "The total number of bare metal hosts located in this compute GPU memory fabric."
  value       = oci_core_compute_gpu_memory_fabric.this.total_host_count
}
