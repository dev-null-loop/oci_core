output "id" {
  description = "The subnet's Oracle ID"
  value       = oci_core_subnet.this.id
}

output "cidr_block" {
  description = "The subnet's CIDR block.  Example: `10.0.1.0/24`"
  value       = oci_core_subnet.this.cidr_block
}
