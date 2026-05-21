output "id" {
  description = "The Oracle-assigned ID of the DRG route rule."
  value       = oci_core_drg_route_table_route_rule.this.id
}

output "attributes" {
  description = "Additional properties for the route, computed by the service."
  value       = oci_core_drg_route_table_route_rule.this.attributes
}

output "destination" {
  description = "Represents the range of IP addresses to match against when routing traffic."
  value       = oci_core_drg_route_table_route_rule.this.destination
}

output "destination_type" {
  description = "The type of destination for the rule."
  value       = oci_core_drg_route_table_route_rule.this.destination_type
}

output "is_blackhole" {
  description = "Indicates that if the next hop attachment does not exist, so traffic for this route is discarded without notification."
  value       = oci_core_drg_route_table_route_rule.this.is_blackhole
}

output "is_conflict" {
  description = "Indicates that the route was not imported due to a conflict between route rules."
  value       = oci_core_drg_route_table_route_rule.this.is_conflict
}

output "next_hop_drg_attachment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the next hop DRG attachment responsible for reaching the network destination."
  value       = oci_core_drg_route_table_route_rule.this.next_hop_drg_attachment_id
}

output "route_provenance" {
  description = "The earliest origin of a route."
  value       = oci_core_drg_route_table_route_rule.this.route_provenance
}

output "route_type" {
  description = "You can specify static routes for the DRG route table using the API. The DRG learns dynamic routes from the DRG attachments using various routing protocols."
  value       = oci_core_drg_route_table_route_rule.this.route_type
}
