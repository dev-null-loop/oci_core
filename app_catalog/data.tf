data "oci_core_app_catalog_listing" "this" {
  listing_id = data.oci_core_app_catalog_listings.app_catalog_listings.app_catalog_listings[0].listing_id
}
