output "id" {
  description = "The Terraform ID for this DRG attachments list retrieval operation."
  value       = oci_core_drg_attachments_list.this.id
}

output "drg_all_attachments" {
  description = "The list of drg_attachments."
  value       = oci_core_drg_attachments_list.this.drg_all_attachments
}
