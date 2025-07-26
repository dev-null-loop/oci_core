# data "oci_core_app_catalog_listings" "app_catalog_listings" {
#   publisher_name = var.publisher_name
# }

# data "oci_core_app_catalog_listing_resource_version" "app_catalog_listing_resource_version" {
#   #Required
#   listing_id       = data.oci_core_app_catalog_listings.app_catalog_listings.app_catalog_listings[0].listing_id
#   resource_version = var.listing_resource_version
# }

# resource "oci_core_app_catalog_listing_resource_version_agreement" "app_catalog_listing_resource_version_agreement" {
#   #Required
#   listing_id               = data.oci_core_app_catalog_listings.app_catalog_listings.app_catalog_listings[0].listing_id
#   listing_resource_version = var.listing_resource_version
# }

resource "oci_core_app_catalog_subscription" "this" {
  compartment_id           = var.compartment_id
  listing_id               = oci_core_app_catalog_listing_resource_version_agreement.app_catalog_listing_resource_version_agreement.listing_id
  listing_resource_version = oci_core_app_catalog_listing_resource_version_agreement.app_catalog_listing_resource_version_agreement.listing_resource_version
  oracle_terms_of_use_link = oci_core_app_catalog_listing_resource_version_agreement.app_catalog_listing_resource_version_agreement.oracle_terms_of_use_link
  signature                = oci_core_app_catalog_listing_resource_version_agreement.app_catalog_listing_resource_version_agreement.signature
  time_retrieved           = oci_core_app_catalog_listing_resource_version_agreement.app_catalog_listing_resource_version_agreement.time_retrieved
  eula_link                = oci_core_app_catalog_listing_resource_version_agreement.app_catalog_listing_resource_version_agreement.eula_link
}
