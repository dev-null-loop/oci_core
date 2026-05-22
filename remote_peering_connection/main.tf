resource "oci_core_remote_peering_connection" "requestor" {
  compartment_id   = local.requestor_effective.compartment_id
  drg_id           = local.requestor_effective.drg_id
  defined_tags     = local.requestor_effective.defined_tags
  display_name     = local.requestor_effective.display_name
  freeform_tags    = local.requestor_effective.freeform_tags
  peer_id          = oci_core_remote_peering_connection.acceptor.id
  peer_region_name = local.requestor_effective.peer_region_name
  provider         = oci.requestor
}

resource "oci_core_remote_peering_connection" "acceptor" {
  compartment_id = local.acceptor_effective.compartment_id
  drg_id         = local.acceptor_effective.drg_id
  defined_tags   = local.acceptor_effective.defined_tags
  display_name   = local.acceptor_effective.display_name
  freeform_tags  = local.acceptor_effective.freeform_tags
  provider       = oci.acceptor
}
