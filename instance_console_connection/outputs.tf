output "id" {
  description = "The OCID of the console connection."
  value       = oci_core_instance_console_connection.this.id
}

output "compartment_id" {
  description = "The OCID of the compartment to contain the console connection."
  value       = oci_core_instance_console_connection.this.compartment_id
}

output "connection_string" {
  description = "The SSH connection string for the console connection."
  value       = oci_core_instance_console_connection.this.connection_string
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_instance_console_connection.this.defined_tags
}

output "fingerprint" {
  description = "The SSH public key's fingerprint for client authentication to the console connection."
  value       = oci_core_instance_console_connection.this.fingerprint
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_instance_console_connection.this.freeform_tags
}

output "instance_id" {
  description = "The OCID of the instance the console connection connects to."
  value       = oci_core_instance_console_connection.this.instance_id
}

output "service_host_key_fingerprint" {
  description = "The SSH public key's fingerprint for the console connection service host."
  value       = oci_core_instance_console_connection.this.service_host_key_fingerprint
}

output "state" {
  description = "The current state of the console connection."
  value       = oci_core_instance_console_connection.this.state
}

output "vnc_connection_string" {
  description = "The SSH connection string for the SSH tunnel used to connect to the console connection over VNC."
  value       = oci_core_instance_console_connection.this.vnc_connection_string
}
