output "id" {
  description = "The IPSec connection's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  value       = oci_core_ipsec.this.id
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the IPSec connection."
  value       = oci_core_ipsec.this.compartment_id
}

output "cpe_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the [Cpe](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/Cpe/) object."
  value       = oci_core_ipsec.this.cpe_id
}

output "drg_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG."
  value       = oci_core_ipsec.this.drg_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_ipsec.this.display_name
}

output "state" {
  description = "The IPSec connection's current state."
  value       = oci_core_ipsec.this.state
}

output "static_routes" {
  description = "Static routes to the CPE. The CIDR must not be a multicast address or class E address."
  value       = oci_core_ipsec.this.static_routes
}

output "time_created" {
  description = "The date and time the IPSec connection was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_ipsec.this.time_created
}

output "transport_type" {
  description = "The transport type used for the IPSec connection."
  value       = oci_core_ipsec.this.transport_type
}

output "tunnel_configuration" {
  description = "Tunnel configuration for private ipsec connection over fastconnect."
  value       = oci_core_ipsec.this.tunnel_configuration
}
