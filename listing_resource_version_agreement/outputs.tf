output "id" {
  description = "The Terraform ID for this agreement retrieval operation."
  value       = oci_core_listing_resource_version_agreement.this.id
}

output "eula_link" {
  description = "EULA link"
  value       = oci_core_listing_resource_version_agreement.this.eula_link
}

output "listing_id" {
  description = "The OCID of the listing associated with these agreements."
  value       = oci_core_listing_resource_version_agreement.this.listing_id
}

output "listing_resource_version" {
  description = "Listing resource version associated with these agreements."
  value       = oci_core_listing_resource_version_agreement.this.listing_resource_version
}

output "oracle_terms_of_use_link" {
  description = "Oracle TOU link"
  value       = oci_core_listing_resource_version_agreement.this.oracle_terms_of_use_link
}

output "signature" {
  description = "A generated signature for this agreement retrieval operation which should be used in the create subscription call."
  value       = oci_core_listing_resource_version_agreement.this.signature
}

output "time_retrieved" {
  description = "Date and time the agreements were retrieved, in RFC3339 format. Example: `2018-03-20T12:32:53.532Z`"
  value       = oci_core_listing_resource_version_agreement.this.time_retrieved
}
