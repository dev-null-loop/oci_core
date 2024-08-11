resource "oci_core_volume_backup_policy_assignment" "this" {
  asset_id  = var.asset_id
  policy_id = var.policy_id
}
