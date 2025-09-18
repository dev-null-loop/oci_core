resource "oci_core_app_catalog_subscription" "this" {
  compartment_id           = var.compartment_id
  listing_id               = var.listing_id
  listing_resource_version = var.listing_resource_version
  oracle_terms_of_use_link = var.oracle_terms_of_use_link
  signature                = var.signature
  time_retrieved           = var.time_retrieved
  eula_link                = var.eula_link
}
