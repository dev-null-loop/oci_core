output "id" {
  description = "The compute image capability schema [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm)."
  value       = oci_core_compute_image_capability_schema.this.id
}

output "compartment_id" {
  description = "The OCID of the compartment containing the compute global image capability schema."
  value       = oci_core_compute_image_capability_schema.this.compartment_id
}

output "compute_global_image_capability_schema_id" {
  description = "The ocid of the compute global image capability schema."
  value       = oci_core_compute_image_capability_schema.this.compute_global_image_capability_schema_id
}

output "compute_global_image_capability_schema_version_name" {
  description = "The name of the compute global image capability schema version."
  value       = oci_core_compute_image_capability_schema.this.compute_global_image_capability_schema_version_name
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_compute_image_capability_schema.this.display_name
}

output "image_id" {
  description = "The OCID of the image associated with this compute image capability schema."
  value       = oci_core_compute_image_capability_schema.this.image_id
}

output "schema_data" {
  description = "A mapping of each capability name to its ImageCapabilityDescriptor."
  value       = oci_core_compute_image_capability_schema.this.schema_data
}

output "time_created" {
  description = "The date and time the compute image capability schema was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_compute_image_capability_schema.this.time_created
}
