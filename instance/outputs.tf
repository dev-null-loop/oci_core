output "id" {
  description = "The OCID of the instance."
  value       = oci_core_instance.this.id
}

output "boot_volume_id" {
  description = "The OCID of the attached boot volume. If the `source_type` is `bootVolume`, this will be the same OCID as the `source_id`."
  value       = oci_core_instance.this.boot_volume_id
}

output "private_ip" {
  description = " The private IP address of instance VNIC. To set the private IP address, use the `private_ip` argument in create_vnic_details."
  value       = oci_core_instance.this.private_ip
}
