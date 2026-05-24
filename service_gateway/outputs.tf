output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the service gateway."
  value       = oci_core_service_gateway.this.id
}

output "block_traffic" {
  description = "Whether the service gateway blocks all traffic through it."
  value       = oci_core_service_gateway.this.block_traffic
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment that contains the service gateway."
  value       = oci_core_service_gateway.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_service_gateway.this.display_name
}

output "route_table_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the route table the service gateway is using."
  value       = oci_core_service_gateway.this.route_table_id
}

output "services" {
  description = "List of the Service objects enabled for this service gateway."
  value       = oci_core_service_gateway.this.services
}

output "state" {
  description = "The service gateway's current state."
  value       = oci_core_service_gateway.this.state
}

output "time_created" {
  description = "The date and time the service gateway was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_service_gateway.this.time_created
}

output "vcn_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VCN the service gateway belongs to."
  value       = oci_core_service_gateway.this.vcn_id
}
