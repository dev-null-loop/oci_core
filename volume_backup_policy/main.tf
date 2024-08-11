resource "oci_core_volume_backup_policy" "this" {
  compartment_id     = var.compartment_id
  defined_tags       = var.defined_tags
  destination_region = var.destination_region
  display_name       = var.display_name
  freeform_tags      = var.freeform_tags

  dynamic "schedules" {
    for_each = var.schedules[*]
    content {
      backup_type       = var.schedules.backup_type
      period            = var.schedules.period
      retention_seconds = var.schedules.retention_seconds
      day_of_month      = var.schedules.day_of_month
      day_of_week       = var.schedules.day_of_week
      hour_of_day       = var.schedules.hour_of_day
      month             = var.schedules.month
      offset_seconds    = var.schedules.offset_seconds
      offset_type       = var.schedules.offset_type
      time_zone         = var.schedules.time_zone
    }
  }
}
