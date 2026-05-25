output "id" {
  description = "The composite Terraform ID for the route table attachment."
  value       = oci_core_route_table_attachment.this.id
}

output "subnet_id" {
  description = "(Required) The OCID of the subnet."
  value       = oci_core_route_table_attachment.this.subnet_id
}

output "route_table_id" {
  description = "(Required) The OCID of the route table."
  value       = oci_core_route_table_attachment.this.route_table_id
}
