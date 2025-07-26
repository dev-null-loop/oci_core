output "listing_id" {
  description = "The OCID of the listing associated with these agreements."
  value       = oci_core_app_catalog_listing_resource_version_agreement.this.listing_id
}
