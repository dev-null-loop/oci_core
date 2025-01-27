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

output "public_ip" {
  description = "The public IP address of instance VNIC (if enabled)."
  value       = oci_core_instance.this.public_ip
}

output "vnic_id" {
  value = data.oci_core_vnic_attachments.these.vnic_attachments[0].vnic_id
}

output "primary_private_ip_id" {
  value = data.oci_core_private_ips.these.private_ips[0].id
}
