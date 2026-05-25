output "id" {
  description = "The OCID of the instance maintenance event."
  value       = oci_core_instance_maintenance_event.this.id
}

output "additional_details" {
  description = "Additional details of the maintenance in the form of json."
  value       = oci_core_instance_maintenance_event.this.additional_details
}

output "alternative_resolution_action" {
  description = "One of the alternativeResolutionActions that was provided in the InstanceMaintenanceEvent."
  value       = oci_core_instance_maintenance_event.this.alternative_resolution_action
}

output "alternative_resolution_actions" {
  description = "These are alternative actions to the requested instanceAction that can be taken to resolve the Maintenance."
  value       = oci_core_instance_maintenance_event.this.alternative_resolution_actions
}

output "can_delete_local_storage" {
  description = "For Instances that have local storage, this field is set to true when local storage will be deleted as a result of the Maintenance."
  value       = oci_core_instance_maintenance_event.this.can_delete_local_storage
}

output "can_reschedule" {
  description = "Indicates if this MaintenanceEvent is capable of being rescheduled up to the timeHardDueDate."
  value       = oci_core_instance_maintenance_event.this.can_reschedule
}

output "compartment_id" {
  description = "The OCID of the compartment that contains the instance."
  value       = oci_core_instance_maintenance_event.this.compartment_id
}

output "correlation_token" {
  description = "A unique identifier that will group Instances that have a relationship with one another and must be scheduled together for the Maintenance to proceed. Any Instances that have a relationship with one another from a Maintenance perspective will have a matching correlationToken."
  value       = oci_core_instance_maintenance_event.this.correlation_token
}

output "created_by" {
  description = "The creator of the maintenance event."
  value       = oci_core_instance_maintenance_event.this.created_by
}

output "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  value       = oci_core_instance_maintenance_event.this.defined_tags
}

output "description" {
  description = "A description of the maintenance event."
  value       = oci_core_instance_maintenance_event.this.description
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_instance_maintenance_event.this.display_name
}

output "estimated_duration" {
  description = "The estimated duration of the maintenance event."
  value       = oci_core_instance_maintenance_event.this.estimated_duration
}

output "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  value       = oci_core_instance_maintenance_event.this.freeform_tags
}

output "instance_action" {
  description = "The action that will be performed on the instance by the maintenance event."
  value       = oci_core_instance_maintenance_event.this.instance_action
}

output "instance_id" {
  description = "The OCID of the instance."
  value       = oci_core_instance_maintenance_event.this.instance_id
}

output "maintenance_category" {
  description = "The category of the maintenance event."
  value       = oci_core_instance_maintenance_event.this.maintenance_category
}

output "maintenance_reason" {
  description = "The reason for the maintenance event."
  value       = oci_core_instance_maintenance_event.this.maintenance_reason
}

output "start_window_duration" {
  description = "The duration of the time window within which maintenance can begin."
  value       = oci_core_instance_maintenance_event.this.start_window_duration
}

output "state" {
  description = "The current state of the maintenance event."
  value       = oci_core_instance_maintenance_event.this.state
}

output "time_created" {
  description = "The date and time the maintenance event was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339). Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_instance_maintenance_event.this.time_created
}

output "time_finished" {
  description = "The date and time the maintenance event finished, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_instance_maintenance_event.this.time_finished
}

output "time_hard_due_date" {
  description = "The hard due date of the maintenance event, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_instance_maintenance_event.this.time_hard_due_date
}

output "time_started" {
  description = "The date and time the maintenance event started, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339)."
  value       = oci_core_instance_maintenance_event.this.time_started
}

output "time_window_start" {
  description = "The beginning of the time window when Maintenance is scheduled to begin. The Maintenance will not begin before this time."
  value       = oci_core_instance_maintenance_event.this.time_window_start
}
