variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment to contain the set of DHCP options."
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
}

variable "domain_name_type" {
  description = "(Optional) (Updatable) The search domain name type of DHCP options"
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "options" {
  description = "(Required) (Updatable) A set of DHCP options."
}

# * `custom_dns_servers` - (Applicable when type=DomainNameServer) (Updatable) If you set `serverType` to `CustomDnsServer`, specify the IP address of at least one DNS server of your choice (three maximum).
# * `search_domain_names` - (Required when type=SearchDomain) (Updatable) A single search domain name according to [RFC 952](https://tools.ietf.org/html/rfc952) and [RFC 1123](https://tools.ietf.org/html/rfc1123). During a DNS query, the OS will append this search domain name to the value being queried.

#	If you set [DhcpDnsOption](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/DhcpDnsOption/) to `VcnLocalPlusInternet`, and you assign a DNS label to the VCN during creation, the search domain name in the VCN's default set of DHCP options is automatically set to the VCN domain (for example, `vcn1.oraclevcn.com`).

#	If you don't want to use a search domain name, omit this option from the set of DHCP options. Do not include this option with an empty list of search domain names, or with an empty string as the value for any search domain name.
# * `server_type` - (Required when type=DomainNameServer) (Updatable)
#	* **VcnLocal:** Reserved for future use.
#	* **VcnLocalPlusInternet:** Also referred to as "Internet and VCN Resolver". Instances can resolve internet hostnames (no internet gateway is required), and can resolve hostnames of instances in the VCN. This is the default value in the default set of DHCP options in the VCN. For the Internet and VCN Resolver to work across the VCN, there must also be a DNS label set for the VCN, a DNS label set for each subnet, and a hostname for each instance. The Internet and VCN Resolver also enables reverse DNS lookup, which lets you determine the hostname corresponding to the private IP address. For more information, see [DNS in Your Virtual Cloud Network](https://docs.cloud.oracle.com/iaas/Content/Network/Concepts/dns.htm).
#	* **CustomDnsServer:** Instances use a DNS server of your choice (three maximum).
# * `type` - (Required) (Updatable) The specific DHCP option. Either `DomainNameServer` (for [DhcpDnsOption](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/DhcpDnsOption/)) or `SearchDomain` (for [DhcpSearchDomainOption](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/DhcpSearchDomainOption/)).

variable "vcn_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VCN the set of DHCP options belongs to."
  type        = string
}
