output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the dedicated VM host."
  value       = oci_core_dedicated_vm_host.this.id
}

output "availability_domain" {
  description = "The availability domain the dedicated virtual machine host is running in.  Example: `Uocm:PHX-AD-1`"
  value       = oci_core_dedicated_vm_host.this.availability_domain
}

output "capacity_bins" {
  description = "Capacity bucket information for the dedicated VM host."
  value       = oci_core_dedicated_vm_host.this.capacity_bins
}

output "capacity_config" {
  description = "The capacity configuration selected to be configured for the Dedicated Virtual Machine host."
  value       = oci_core_dedicated_vm_host.this.capacity_config
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the dedicated virtual machine host."
  value       = oci_core_dedicated_vm_host.this.compartment_id
}

output "compute_bare_metal_host_id" {
  description = "The compute bare metal host OCID of the dedicated virtual machine host."
  value       = oci_core_dedicated_vm_host.this.compute_bare_metal_host_id
}

output "dedicated_vm_host_shape" {
  description = "The dedicated virtual machine host shape. The shape determines the number of CPUs and other resources available for VMs."
  value       = oci_core_dedicated_vm_host.this.dedicated_vm_host_shape
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_dedicated_vm_host.this.display_name
}

output "fault_domain" {
  description = "The fault domain for the dedicated virtual machine host's assigned instances."
  value       = oci_core_dedicated_vm_host.this.fault_domain
}

output "is_memory_encryption_enabled" {
  description = "Specifies if the Dedicated Virtual Machine Host (DVMH) is restricted to running only Confidential VMs."
  value       = oci_core_dedicated_vm_host.this.is_memory_encryption_enabled
}

output "placement_constraint_details" {
  description = "The details for providing placement constraints."
  value       = oci_core_dedicated_vm_host.this.placement_constraint_details
}

output "remaining_memory_in_gbs" {
  description = "The current available memory of the dedicated VM host, in GBs."
  value       = oci_core_dedicated_vm_host.this.remaining_memory_in_gbs
}

output "remaining_ocpus" {
  description = "The current available OCPUs of the dedicated VM host."
  value       = oci_core_dedicated_vm_host.this.remaining_ocpus
}

output "state" {
  description = "The current state of the dedicated VM host."
  value       = oci_core_dedicated_vm_host.this.state
}

output "time_created" {
  description = "The date and time the dedicated VM host was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_dedicated_vm_host.this.time_created
}

output "total_memory_in_gbs" {
  description = "The current total memory of the dedicated VM host, in GBs."
  value       = oci_core_dedicated_vm_host.this.total_memory_in_gbs
}

output "total_ocpus" {
  description = "The current total OCPUs of the dedicated VM host."
  value       = oci_core_dedicated_vm_host.this.total_ocpus
}
