output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the instance."
  value       = oci_core_instance_pool_instance.this.id
}

output "availability_domain" {
  description = "The availability domain the instance is running in."
  value       = oci_core_instance_pool_instance.this.availability_domain
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment that contains the instance."
  value       = oci_core_instance_pool_instance.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_instance_pool_instance.this.display_name
}

output "fault_domain" {
  description = "The fault domain the instance is running in."
  value       = oci_core_instance_pool_instance.this.fault_domain
}

output "instance_configuration_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the instance configuration used to create the instance."
  value       = oci_core_instance_pool_instance.this.instance_configuration_id
}

output "instance_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the instance."
  value       = oci_core_instance_pool_instance.this.instance_id
}

output "instance_pool_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the instance pool."
  value       = oci_core_instance_pool_instance.this.instance_pool_id
}

output "load_balancer_backends" {
  description = "The load balancer backends that are configured for the instance pool instance."
  value       = oci_core_instance_pool_instance.this.load_balancer_backends
}

output "region" {
  description = "The region that contains the availability domain the instance is running in."
  value       = oci_core_instance_pool_instance.this.region
}

output "shape" {
  description = "The shape of an instance. The shape determines the number of CPUs, amount of memory, and other resources allocated to the instance."
  value       = oci_core_instance_pool_instance.this.shape
}

output "state" {
  description = "The lifecycle state of the instance. Refer to `lifecycleState` in the [Instance](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/Instance) resource."
  value       = oci_core_instance_pool_instance.this.state
}

output "time_created" {
  description = "The date and time the instance pool instance was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339). Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_instance_pool_instance.this.time_created
}
