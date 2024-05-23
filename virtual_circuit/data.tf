data "oci_core_fast_connect_provider_services" "fc_providers" {
  compartment_id = var.compartment_ids[var.fastconnect_params[keys(var.fastconnect_params)[0]].compartment_name]
}
