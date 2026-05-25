output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the instance pool."
  value       = oci_core_instance_pool.this.id
}

output "actual_size" {
  description = "The number of actual instances in the instance pool on the cloud. This attribute will be different when instance pool is used along with autoScaling Configuration."
  value       = oci_core_instance_pool.this.actual_size
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the instance pool."
  value       = oci_core_instance_pool.this.compartment_id
}

output "current_size" {
  description = "Count of instance in running state associated to the Instance Pool."
  value       = oci_core_instance_pool.this.current_size
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_instance_pool.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_instance_pool.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_instance_pool.this.freeform_tags
}

output "instance_configuration_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the instance configuration associated with the instance pool."
  value       = oci_core_instance_pool.this.instance_configuration_id
}

output "instance_display_name_formatter" {
  description = "A user-friendly formatter for the instance pool's instances. Instance displaynames follow the format. The formatter does not retroactively change instance's displaynames, only instance displaynames in the future follow the format."
  value       = oci_core_instance_pool.this.instance_display_name_formatter
}

output "instance_hostname_formatter" {
  description = "A user-friendly formatter for the instance pool's instances. Instance hostnames follow the format. The formatter does not retroactively change instance's hostnames, only instance hostnames in the future follow the format."
  value       = oci_core_instance_pool.this.instance_hostname_formatter
}

output "lifecycle_management" {
  description = "The lifecycle management options for the instance pool."
  value       = oci_core_instance_pool.this.lifecycle_management
}

output "load_balancers" {
  description = "The load balancers attached to the instance pool."
  value       = oci_core_instance_pool.this.load_balancers
}

output "placement_configurations" {
  description = "The placement configurations for the instance pool."
  value       = oci_core_instance_pool.this.placement_configurations
}

output "size" {
  description = "The number of instances that should be in the instance pool."
  value       = oci_core_instance_pool.this.size
}

output "state" {
  description = "The current state of the instance pool."
  value       = oci_core_instance_pool.this.state
}

output "time_created" {
  description = "The date and time the instance pool was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339). Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_instance_pool.this.time_created
}
