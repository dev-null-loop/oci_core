output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the `Byoasn` resource."
  value       = oci_core_byoasn.this.id
}

output "asn" {
  description = "The Autonomous System Number (ASN) you are importing to the Oracle cloud."
  value       = oci_core_byoasn.this.asn
}

output "byoip_ranges" {
  description = "The BYOIP Ranges that has the `Byoasn` as origin."
  value       = oci_core_byoasn.this.byoip_ranges
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the `Byoasn` resource."
  value       = oci_core_byoasn.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_byoasn.this.display_name
}

output "state" {
  description = "The `Byoasn` resource's current state."
  value       = oci_core_byoasn.this.state
}

output "time_created" {
  description = "The date and time the `Byoasn` resource was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_byoasn.this.time_created
}

output "time_updated" {
  description = "The date and time the `Byoasn` resource was last updated, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_byoasn.this.time_updated
}

output "time_validated" {
  description = "The date and time the `Byoasn` resource was validated, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_byoasn.this.time_validated
}

output "validation_token" {
  description = "The validation token is an internally-generated ASCII string used in the validation process."
  value       = oci_core_byoasn.this.validation_token
}
