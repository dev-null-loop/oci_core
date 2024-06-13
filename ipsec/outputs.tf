output "id" {
  description = "The IPSec connection's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  value       = oci_core_ipsec.this.id
}

output "tunnel_this_id" {
  description = "This tunnel's Oracle ID (OCID)."
  value       = oci_core_ipsec_connection_tunnel_management.this.id
}

output "tunnel_that_id" {
  description = "That tunnel's Oracle ID (OCID)."
  value       = oci_core_ipsec_connection_tunnel_management.that.id
}

output "tunnels" {
  value = {
    "${oci_core_ipsec_connection_tunnel_management.this.display_name}" = oci_core_ipsec_connection_tunnel_management.this.id
    "${oci_core_ipsec_connection_tunnel_management.that.display_name}" = oci_core_ipsec_connection_tunnel_management.that.id
  }
}
