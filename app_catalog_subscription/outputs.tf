output "id" {
  description = "The Terraform ID for the app catalog subscription."
  value       = oci_core_app_catalog_subscription.this.id
}

output "compartment_id" {
  description = "The compartmentID of the subscription."
  value       = oci_core_app_catalog_subscription.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_app_catalog_subscription.this.display_name
}

output "listing_id" {
  description = "The ocid of the listing resource."
  value       = oci_core_app_catalog_subscription.this.listing_id
}

output "listing_resource_id" {
  description = "Listing resource id."
  value       = oci_core_app_catalog_subscription.this.listing_resource_id
}

output "listing_resource_version" {
  description = "Listing resource version."
  value       = oci_core_app_catalog_subscription.this.listing_resource_version
}

output "publisher_name" {
  description = "Name of the publisher who published this listing."
  value       = oci_core_app_catalog_subscription.this.publisher_name
}

output "summary" {
  description = "The short summary to the listing."
  value       = oci_core_app_catalog_subscription.this.summary
}

output "time_created" {
  description = "Date and time at which the subscription was created, in [RFC3339](https://tools.ietf.org/html/rfc3339) format. Example: `2018-03-20T12:32:53.532Z`"
  value       = oci_core_app_catalog_subscription.this.time_created
}
