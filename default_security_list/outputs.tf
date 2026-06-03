output "id" {
  description = "The id of the resource."
  value       = oci_core_default_security_list.this.id
}

output "state" {
  description = "The state of the resource."
  value       = oci_core_default_security_list.this.state
}

output "time_created" {
  description = "The time_created of the resource."
  value       = oci_core_default_security_list.this.time_created
}
