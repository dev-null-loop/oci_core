output "id" {
  description = "The public IP's Oracle ID ([OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm))."
  value       = oci_core_public_ip.this.id
}

output "assigned_entity_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the entity the public IP is assigned to, or in the process of being assigned to."
  value       = oci_core_public_ip.this.assigned_entity_id
}

output "assigned_entity_type" {
  description = "The type of entity the public IP is assigned to, or in the process of being assigned to."
  value       = oci_core_public_ip.this.assigned_entity_type
}

output "availability_domain" {
  description = "The public IP's availability domain. This property is set only for ephemeral public IPs that are assigned to a private IP (that is, when the `scope` of the public IP is set to AVAILABILITY_DOMAIN). The value is the availability domain of the assigned private IP.  Example: `Uocm:PHX-AD-1`"
  value       = oci_core_public_ip.this.availability_domain
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the public IP. For an ephemeral public IP, this is the compartment of its assigned entity (which can be a private IP or a regional entity such as a NAT gateway). For a reserved public IP that is currently assigned, its compartment can be different from the assigned private IP's."
  value       = oci_core_public_ip.this.compartment_id
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_public_ip.this.defined_tags
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_public_ip.this.display_name
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_public_ip.this.freeform_tags
}

output "ip_address" {
  description = "The public IP address of the `publicIp` object.  Example: `203.0.113.2`"
  value       = oci_core_public_ip.this.ip_address
}

output "lifetime" {
  description = "Defines when the public IP is deleted and released back to Oracle's public IP pool."
  value       = oci_core_public_ip.this.lifetime
}

output "private_ip_id" {
  description = "Deprecated. Use `assignedEntityId` instead."
  value       = oci_core_public_ip.this.private_ip_id
}

output "public_ip_pool_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the pool object created in the current tenancy."
  value       = oci_core_public_ip.this.public_ip_pool_id
}

output "scope" {
  description = "Whether the public IP is regional or specific to a particular availability domain."
  value       = oci_core_public_ip.this.scope
}

output "state" {
  description = "The public IP's current state."
  value       = oci_core_public_ip.this.state
}

output "time_created" {
  description = "The date and time the public IP was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_public_ip.this.time_created
}
