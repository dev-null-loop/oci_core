output "id" {
  description = "The OCID of the instance configuration."
  value       = oci_core_instance_configuration.this.id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the instance configuration."
  value       = oci_core_instance_configuration.this.compartment_id
}

output "deferred_fields" {
  description = "Parameters that were not specified when the instance configuration was created, but that are required to launch an instance from the instance configuration. See the [LaunchInstanceConfiguration](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/Instance/LaunchInstanceConfiguration) operation."
  value       = oci_core_instance_configuration.this.deferred_fields
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  value       = oci_core_instance_configuration.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_instance_configuration.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  value       = oci_core_instance_configuration.this.freeform_tags
}

output "instance_details" {
  description = "An array of instance details."
  value       = oci_core_instance_configuration.this.instance_details
}

output "time_created" {
  description = "The date and time the instance configuration was created, in the format defined by RFC3339."
  value       = oci_core_instance_configuration.this.time_created
}
