output "id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compute capacity reservation."
  value       = oci_core_compute_capacity_reservation.this.id
}

output "availability_domain" {
  description = "The availability domain of the compute capacity reservation.  Example: `Uocm:PHX-AD-1`"
  value       = oci_core_compute_capacity_reservation.this.availability_domain
}

output "compartment_id" {
  description = "The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the compute capacity reservation."
  value       = oci_core_compute_capacity_reservation.this.compartment_id
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_compute_capacity_reservation.this.display_name
}

output "instance_reservation_configs" {
  description = "The capacity configurations for the capacity reservation."
  value       = oci_core_compute_capacity_reservation.this.instance_reservation_configs
}

output "is_default_reservation" {
  description = "Whether this capacity reservation is the default."
  value       = oci_core_compute_capacity_reservation.this.is_default_reservation
}

output "reserved_instance_count" {
  description = "The number of instances for which capacity will be held with this compute capacity reservation."
  value       = oci_core_compute_capacity_reservation.this.reserved_instance_count
}

output "state" {
  description = "The current state of the compute capacity reservation."
  value       = oci_core_compute_capacity_reservation.this.state
}

output "time_created" {
  description = "The date and time the compute capacity reservation was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_compute_capacity_reservation.this.time_created
}

output "time_updated" {
  description = "The date and time the compute capacity reservation was updated, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_compute_capacity_reservation.this.time_updated
}

output "used_instance_count" {
  description = "The total number of instances currently consuming space in this compute capacity reservation."
  value       = oci_core_compute_capacity_reservation.this.used_instance_count
}
