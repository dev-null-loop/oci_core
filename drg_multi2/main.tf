resource "oci_core_drg" "this" {
  for_each       = var.provider_list
  compartment_id = var.compartment_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  provider       = each.value
}

# resource "oneview_appliance_time_and_locale" "timelocale2" {
#   for_each = var.provider_list // List contain provider and its alias
#   locale      = "en_US.UTF-8"
#   timezone    = "UTC"
#   ntp_servers = ["10.50.0.50"]
#   provider = each.alias
# }
