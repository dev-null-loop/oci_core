resource "oci_core_cross_connect_group" "this" {
  compartment_id          = var.compartment_id
  customer_reference_name = var.customer_reference_name
  defined_tags            = var.defined_tags
  display_name            = var.display_name
  freeform_tags           = var.freeform_tags

  dynamic "macsec_properties" {
    for_each = var.macsec_properties[*]
    iterator = mp
    content {
      state                          = mp.value.state
      encryption_cipher              = mp.value.encryption_cipher
      is_unprotected_traffic_allowed = mp.value.is_unprotected_traffic_allowed
      dynamic "primary_key" {
        for_each = mp.value.primary_key[*]
        iterator = pk
        content {
          connectivity_association_key_secret_id       = pk.value.connectivity_association_key_secret_id
          connectivity_association_key_secret_version  = pk.value.connectivity_association_key_secret_version
          connectivity_association_name_secret_id      = pk.value.connectivity_association_name_secret_id
          connectivity_association_name_secret_version = pk.value.connectivity_association_name_secret_version
        }
      }
    }
  }
}
