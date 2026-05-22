output "id" {
  description = "The cross-connect group's Oracle ID (OCID)."
  value       = oci_core_cross_connect_group.this.id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the cross-connect group."
  value       = oci_core_cross_connect_group.this.compartment_id
}

output "customer_reference_name" {
  description = "A reference name or identifier for the physical fiber connection that this cross-connect group uses."
  value       = oci_core_cross_connect_group.this.customer_reference_name
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_cross_connect_group.this.display_name
}

output "macsec_properties" {
  description = "Properties used for MACsec (if capable)."
  value       = oci_core_cross_connect_group.this.macsec_properties
}

output "oci_logical_device_name" {
  description = "The FastConnect device that terminates the logical connection."
  value       = oci_core_cross_connect_group.this.oci_logical_device_name
}

output "oci_physical_device_name" {
  description = "The FastConnect device that terminates the physical connection."
  value       = oci_core_cross_connect_group.this.oci_physical_device_name
}

output "state" {
  description = "The cross-connect group's current state."
  value       = oci_core_cross_connect_group.this.state
}

output "time_created" {
  description = "The date and time the cross-connect group was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_cross_connect_group.this.time_created
}
