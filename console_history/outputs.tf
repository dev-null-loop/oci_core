output "id" {
  description = "The OCID of the console history metadata object."
  value       = oci_core_console_history.this.id
}

output "availability_domain" {
  description = "The availability domain of an instance.  Example: `Uocm:PHX-AD-1`"
  value       = oci_core_console_history.this.availability_domain
}

output "compartment_id" {
  description = "The OCID of the compartment."
  value       = oci_core_console_history.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_console_history.this.display_name
}

output "instance_id" {
  description = "The OCID of the instance this console history was fetched from."
  value       = oci_core_console_history.this.instance_id
}

output "state" {
  description = "The current state of the console history."
  value       = oci_core_console_history.this.state
}

output "time_created" {
  description = "The date and time the history was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_console_history.this.time_created
}
