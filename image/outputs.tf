output "id" {
  description = "The OCID of the image."
  value       = oci_core_image.this.id
}

output "agent_features" {
  description = "Oracle Cloud Agent features supported on the image."
  value       = oci_core_image.this.agent_features
}

output "base_image_id" {
  description = "The OCID of the image originally used to launch the instance."
  value       = oci_core_image.this.base_image_id
}

output "billable_size_in_gbs" {
  description = "The size of the internal storage for this image that is subject to billing (1 GB = 1,073,741,824 bytes)."
  value       = oci_core_image.this.billable_size_in_gbs
}

output "compartment_id" {
  description = "The OCID of the compartment containing the instance you want to use as the basis for the image."
  value       = oci_core_image.this.compartment_id
}

output "create_image_allowed" {
  description = "Whether instances launched with this image can be used to create new images."
  value       = oci_core_image.this.create_image_allowed
}

output "display_name" {
  description = "A user-friendly name for the image. It does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_image.this.display_name
}

output "launch_mode" {
  description = "Specifies the configuration mode for launching virtual machine (VM) instances."
  value       = oci_core_image.this.launch_mode
}

output "launch_options" {
  description = "Options for tuning the compatibility and performance of VM shapes."
  value       = oci_core_image.this.launch_options
}

output "listing_type" {
  description = "The listing type of the image. The default value is \"NONE\"."
  value       = oci_core_image.this.listing_type
}

output "operating_system" {
  description = "The image's operating system."
  value       = oci_core_image.this.operating_system
}

output "operating_system_version" {
  description = "The image's operating system version."
  value       = oci_core_image.this.operating_system_version
}

output "size_in_mbs" {
  description = "The boot volume size for an instance launched from this image (1 MB = 1,048,576 bytes)."
  value       = oci_core_image.this.size_in_mbs
}

output "state" {
  description = "The current state of the image."
  value       = oci_core_image.this.state
}

output "time_created" {
  description = "The date and time the image was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_image.this.time_created
}
