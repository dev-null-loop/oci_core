output "id" {
  description = "The composite Terraform ID for this public IP pool capacity mapping."
  value       = oci_core_public_ip_pool_capacity.this.id
}

output "public_ip_pool_id" {
  description = "(Required) The OCID of the pool object created by the current tenancy"
  value       = oci_core_public_ip_pool_capacity.this.public_ip_pool_id
}

output "byoip_id" {
  description = "(Required) The OCID of the Byoip Range Id object to which the cidr block belongs."
  value       = oci_core_public_ip_pool_capacity.this.byoip_id
}

output "cidr_block" {
  description = "(Required) The CIDR IP address range to be added to the Public Ip Pool. Example: `10.0.1.0/24`"
  value       = oci_core_public_ip_pool_capacity.this.cidr_block
}
