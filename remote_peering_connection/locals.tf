locals {
  use_explicit_pair = var.requestor != null && var.acceptor != null

  requestor_effective = local.use_explicit_pair ? {
    compartment_id   = var.requestor.compartment_id
    drg_id           = var.requestor.drg_id
    display_name     = try(var.requestor.display_name, null)
    defined_tags     = try(var.requestor.defined_tags, null)
    freeform_tags    = try(var.requestor.freeform_tags, {})
    peer_region_name = var.requestor.peer_region_name
    } : {
    compartment_id   = var.compartment_id
    drg_id           = var.drg_ids["requestor"]
    display_name     = var.display_name
    defined_tags     = var.defined_tags
    freeform_tags    = var.freeform_tags
    peer_region_name = var.peer_region_name
  }

  acceptor_effective = local.use_explicit_pair ? {
    compartment_id = var.acceptor.compartment_id
    drg_id         = var.acceptor.drg_id
    display_name   = try(var.acceptor.display_name, null)
    defined_tags   = try(var.acceptor.defined_tags, null)
    freeform_tags  = try(var.acceptor.freeform_tags, {})
    } : {
    compartment_id = var.compartment_id
    drg_id         = var.drg_ids["acceptor"]
    display_name   = "Acceptor"
    defined_tags   = null
    freeform_tags  = {}
  }
}

check "paired_rpc_interface" {
  assert {
    condition     = (var.requestor == null) == (var.acceptor == null)
    error_message = "If you use the explicit paired interface, both `requestor` and `acceptor` must be provided together."
  }

  assert {
    condition = (
      local.use_explicit_pair
      ? (var.requestor != null && var.acceptor != null)
      : (var.compartment_id != null && var.drg_ids != null && contains(keys(var.drg_ids), "requestor") && contains(keys(var.drg_ids), "acceptor") && var.peer_region_name != null)
    )
    error_message = "Use either the explicit paired interface (`requestor` and `acceptor`) or the complete legacy interface (`compartment_id`, `drg_ids[\"requestor\"]`, `drg_ids[\"acceptor\"]`, and `peer_region_name`)."
  }
}
