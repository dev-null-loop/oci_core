output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) for the Customer-unique GPU Memory Cluster"
  value       = oci_core_compute_gpu_memory_cluster.this.id
}

output "availability_domain" {
  description = "The availability domain of the GPU Memory Cluster."
  value       = oci_core_compute_gpu_memory_cluster.this.availability_domain
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment that contains the compute GPU memory cluster."
  value       = oci_core_compute_gpu_memory_cluster.this.compartment_id
}

output "compute_cluster_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compute cluster."
  value       = oci_core_compute_gpu_memory_cluster.this.compute_cluster_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_compute_gpu_memory_cluster.this.display_name
}

output "gpu_memory_cluster_scale_config" {
  description = "Configuration settings for GPU Memory Cluster scaling."
  value       = oci_core_compute_gpu_memory_cluster.this.gpu_memory_cluster_scale_config
}

output "gpu_memory_fabric_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the GPU memory fabric."
  value       = oci_core_compute_gpu_memory_cluster.this.gpu_memory_fabric_id
}

output "instance_configuration_id" {
  description = "The OCID of the Instance Configuration used to source launch details for this instance."
  value       = oci_core_compute_gpu_memory_cluster.this.instance_configuration_id
}

output "private_ip_ids" {
  description = "Unique list of OCIDs for private IPs (IPv4/IPv6) associated with the GPU Memory Cluster"
  value       = oci_core_compute_gpu_memory_cluster.this.private_ip_ids
}

output "size" {
  description = "The size represents the total number of instances in the GPU Memory Cluster, including both running instances and those still in the process of launching."
  value       = oci_core_compute_gpu_memory_cluster.this.size
}

output "state" {
  description = "The lifecycle state of the GPU Memory Cluster"
  value       = oci_core_compute_gpu_memory_cluster.this.state
}

output "system_tags" {
  description = "Usage of system tag keys. These predefined keys are scoped to namespaces. Example: `{\"orcl-cloud.free-tier-retained\": \"true\"}`"
  value       = oci_core_compute_gpu_memory_cluster.this.system_tags
}

output "time_created" {
  description = "The date and time the GPU Memory Cluster was created.  Example: `2016-09-15T21:10:29.600Z`"
  value       = oci_core_compute_gpu_memory_cluster.this.time_created
}
