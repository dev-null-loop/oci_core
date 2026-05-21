resource "oci_core_drg_route_distribution_statement" "this" {
  drg_route_distribution_id = var.drg_route_distribution_id
  action                    = var.action
  priority                  = var.priority
  match_criteria {
    match_type        = var.match_criteria.match_type
    attachment_type   = var.match_criteria.attachment_type
    drg_attachment_id = var.match_criteria.drg_attachment_id
  }
}
