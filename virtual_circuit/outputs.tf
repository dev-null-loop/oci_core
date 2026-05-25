output "id" {
  description = "The virtual circuit's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  value       = oci_core_virtual_circuit.this.id
}

output "bandwidth_shape_name" {
  description = "The provisioned data rate of the connection. To get a list of the available bandwidth levels (that is, shapes), see [ListFastConnectProviderServiceVirtualCircuitBandwidthShapes](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/FastConnectProviderService/ListFastConnectProviderVirtualCircuitBandwidthShapes).  Example: `10 Gbps`"
  value       = oci_core_virtual_circuit.this.bandwidth_shape_name
}

output "bgp_admin_state" {
  description = "Set to `ENABLED` (the default) to activate the BGP session of the virtual circuit, set to `DISABLED` to deactivate the virtual circuit."
  value       = oci_core_virtual_circuit.this.bgp_admin_state
}

output "bgp_ipv6session_state" {
  description = "The state of the Ipv6 BGP session associated with the virtual circuit."
  value       = oci_core_virtual_circuit.this.bgp_ipv6session_state
}

output "bgp_session_state" {
  description = "The state of the Ipv4 BGP session associated with the virtual circuit."
  value       = oci_core_virtual_circuit.this.bgp_session_state
}

output "compartment_id" {
  description = "The OCID of the compartment containing the virtual circuit."
  value       = oci_core_virtual_circuit.this.compartment_id
}

output "cross_connect_mappings" {
  description = "An array of mappings, each containing properties for a cross-connect or cross-connect group that is associated with this virtual circuit."
  value       = oci_core_virtual_circuit.this.cross_connect_mappings
}

output "customer_asn" {
  description = "The BGP ASN of the network at the other end of the BGP session from Oracle. If the session is between the customer's edge router and Oracle, the value is the customer's ASN. If the BGP session is between the provider's edge router and Oracle, the value is the provider's ASN. Can be a 2-byte or 4-byte ASN. Uses \"asplain\" format."
  value       = oci_core_virtual_circuit.this.customer_asn
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_virtual_circuit.this.display_name
}

output "gateway_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the customer's [dynamic routing gateway (DRG)](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/Drg) that this virtual circuit uses. Applicable only to private virtual circuits."
  value       = oci_core_virtual_circuit.this.gateway_id
}

output "ip_mtu" {
  description = "The layer 3 IP MTU to use on this virtual circuit."
  value       = oci_core_virtual_circuit.this.ip_mtu
}

output "is_bfd_enabled" {
  description = "Set to `true` to enable BFD for IPv4 BGP peering, or set to `false` to disable BFD. If this is not set, the default is `false`."
  value       = oci_core_virtual_circuit.this.is_bfd_enabled
}

output "is_transport_mode" {
  description = "Set to `true` for the virtual circuit to carry only encrypted traffic, or set to `false` for the virtual circuit to carry unencrypted traffic. If this is not set, the default is `false`."
  value       = oci_core_virtual_circuit.this.is_transport_mode
}

output "oracle_bgp_asn" {
  description = "The Oracle BGP ASN."
  value       = oci_core_virtual_circuit.this.oracle_bgp_asn
}

output "provider_service_id" {
  description = "The OCID of the service offered by the provider (if the customer is connecting via a provider)."
  value       = oci_core_virtual_circuit.this.provider_service_id
}

output "provider_service_key_name" {
  description = "The service key name offered by the provider (if the customer is connecting via a provider)."
  value       = oci_core_virtual_circuit.this.provider_service_key_name
}

output "provider_state" {
  description = "The provider's state in relation to this virtual circuit (if the customer is connecting via a provider). ACTIVE means the provider has provisioned the virtual circuit from their end. INACTIVE means the provider has not yet provisioned the virtual circuit, or has de-provisioned it."
  value       = oci_core_virtual_circuit.this.provider_state
}

output "public_prefixes" {
  description = "For a public virtual circuit. The public IP prefixes (CIDRs) the customer wants to advertise across the connection. All prefix sizes are allowed."
  value       = oci_core_virtual_circuit.this.public_prefixes
}

output "reference_comment" {
  description = "Provider-supplied reference information about this virtual circuit (if the customer is connecting via a provider)."
  value       = oci_core_virtual_circuit.this.reference_comment
}

output "region" {
  description = "The Oracle Cloud Infrastructure region where this virtual circuit is located."
  value       = oci_core_virtual_circuit.this.region
}

output "routing_policy" {
  description = "The routing policy sets how routing information about the Oracle cloud is shared over a public virtual circuit. Policies available are: `ORACLE_SERVICE_NETWORK`, `REGIONAL`, `MARKET_LEVEL`, and `GLOBAL`. See [Route Filtering](https://docs.cloud.oracle.com/iaas/Content/Network/Concepts/routingonprem.htm#route_filtering) for details. By default, routing information is shared for all routes in the same market."
  value       = oci_core_virtual_circuit.this.routing_policy
}

output "service_type" {
  description = "Provider service type."
  value       = oci_core_virtual_circuit.this.service_type
}

output "state" {
  description = "The virtual circuit's current state. For information about the different states, see [FastConnect Overview](https://docs.cloud.oracle.com/iaas/Content/Network/Concepts/fastconnect.htm)."
  value       = oci_core_virtual_circuit.this.state
}

output "time_created" {
  description = "The date and time the virtual circuit was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_virtual_circuit.this.time_created
}

output "type" {
  description = "Whether the virtual circuit supports private or public peering. For more information, see [FastConnect Overview](https://docs.cloud.oracle.com/iaas/Content/Network/Concepts/fastconnect.htm)."
  value       = oci_core_virtual_circuit.this.type
}

output "virtual_circuit_redundancy_metadata" {
  description = "This resource provides redundancy level details for the virtual circuit. For more about redundancy, see [FastConnect Redundancy Best Practices](https://docs.cloud.oracle.com/iaas/Content/Network/Concepts/fastconnectresiliency.htm)."
  value       = oci_core_virtual_circuit.this.virtual_circuit_redundancy_metadata
}
