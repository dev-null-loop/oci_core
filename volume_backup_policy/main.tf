resource "oci_core_volume_backup_policy" "this" {
  compartment_id     = var.compartment_id
  defined_tags       = var.defined_tags
  destination_region = var.destination_region
  display_name       = var.display_name
  freeform_tags      = var.freeform_tags
  dynamic "schedules" {
    for_each = var.schedules
    iterator = sc
    content {
      backup_type       = sc.value.backup_type
      period            = sc.value.period
      retention_seconds = sc.value.retention_seconds
      day_of_month      = sc.value.day_of_month
      day_of_week       = sc.value.day_of_week
      hour_of_day       = sc.value.hour_of_day
      month             = sc.value.month
      offset_seconds    = sc.value.offset_seconds
      offset_type       = sc.value.offset_type
      time_zone         = sc.value.time_zone
    }
  }
}
