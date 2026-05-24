output "id" {
  description = "The tunnel's Oracle ID (OCID)."
  value       = oci_core_ipsec_connection_tunnel_management.this.id
}

output "ipsec_id" {
  description = "The OCID of the IPSec connection."
  value       = oci_core_ipsec_connection_tunnel_management.this.ipsec_id
}

output "tunnel_id" {
  description = "The OCID of the IPSec connection's tunnel."
  value       = oci_core_ipsec_connection_tunnel_management.this.tunnel_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_ipsec_connection_tunnel_management.this.display_name
}

output "routing" {
  description = "The type of routing to use for this tunnel (either BGP dynamic routing, STATIC routing or POLICY routing)."
  value       = oci_core_ipsec_connection_tunnel_management.this.routing
}

output "associated_virtual_circuits" {
  description = "The list of virtual circuit [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm)s over which your network can reach this tunnel."
  value       = oci_core_ipsec_connection_tunnel_management.this.associated_virtual_circuits
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the tunnel."
  value       = oci_core_ipsec_connection_tunnel_management.this.compartment_id
}

output "cpe_ip" {
  description = "The IP address of the CPE device's VPN headend.  Example: `203.0.113.22`"
  value       = oci_core_ipsec_connection_tunnel_management.this.cpe_ip
}

output "ike_version" {
  description = "Internet Key Exchange protocol version."
  value       = oci_core_ipsec_connection_tunnel_management.this.ike_version
}

output "state" {
  description = "The IPSec connection's tunnel's lifecycle state."
  value       = oci_core_ipsec_connection_tunnel_management.this.state
}

output "status" {
  description = "The tunnel's current state."
  value       = oci_core_ipsec_connection_tunnel_management.this.status
}

output "time_created" {
  description = "The date and time the IPSec connection tunnel was created, in the format defined by RFC3339.  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_ipsec_connection_tunnel_management.this.time_created
}

output "time_status_updated" {
  description = "When the status of the tunnel last changed, in the format defined by RFC3339.  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_ipsec_connection_tunnel_management.this.time_status_updated
}

output "vpn_ip" {
  description = "The IP address of Oracle's VPN headend.  Example: `129.146.17.50`"
  value       = oci_core_ipsec_connection_tunnel_management.this.vpn_ip
}

output "bgp_session_info" {
  description = "Information for establishing a BGP session for the IPSec tunnel."
  value       = oci_core_ipsec_connection_tunnel_management.this.bgp_session_info
}

output "dpd_mode" {
  description = "Dead peer detection (DPD) mode set on the Oracle side of the connection."
  value       = oci_core_ipsec_connection_tunnel_management.this.dpd_mode
}

output "dpd_timeout_in_sec" {
  description = "DPD timeout in seconds."
  value       = oci_core_ipsec_connection_tunnel_management.this.dpd_timeout_in_sec
}

output "encryption_domain_config" {
  description = "Configuration information used by the encryption domain policy."
  value       = oci_core_ipsec_connection_tunnel_management.this.encryption_domain_config
}

output "nat_translation_enabled" {
  description = "By default (the `AUTO` setting), IKE sends packets with a source and destination port set to 500, and when it detects that the port used to forward packets has changed (most likely because a NAT device is between the CPE device and the Oracle VPN headend) it will try to negotiate the use of NAT-T."
  value       = oci_core_ipsec_connection_tunnel_management.this.nat_translation_enabled
}

output "oracle_can_initiate" {
  description = "Indicates whether Oracle can only respond to a request to start an IPSec tunnel from the CPE device, or both respond to and initiate requests."
  value       = oci_core_ipsec_connection_tunnel_management.this.oracle_can_initiate
}

output "phase_one_details" {
  description = "IPSec tunnel details specific to ISAKMP phase one. See [TunnelPhaseOneDetails](https://docs.oracle.com/en-us/iaas/api/#/en/iaas/20160918/datatypes/TunnelPhaseOneDetails)."
  value       = oci_core_ipsec_connection_tunnel_management.this.phase_one_details
}

output "phase_two_details" {
  description = "(IPsec tunnel detail information specific to phase two. See [TunnelPhaseTwoDetails](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/datatypes/TunnelPhaseTwoDetails)."
  value       = oci_core_ipsec_connection_tunnel_management.this.phase_two_details
}
