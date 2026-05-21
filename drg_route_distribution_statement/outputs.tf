output "id" {
  description = "The Oracle-assigned ID of the route distribution statement."
  value       = oci_core_drg_route_distribution_statement.this.id
}

output "action" {
  description = "`ACCEPT` indicates the route should be imported or exported as-is."
  value       = oci_core_drg_route_distribution_statement.this.action
}

output "match_criteria" {
  description = "The action is applied only if all of the match criteria is met. If match type is MATCH_ALL, any input is considered a match."
  value       = oci_core_drg_route_distribution_statement.this.match_criteria
}

output "priority" {
  description = "This field specifies the priority of each statement in a route distribution. Priorities must be unique within a particular route distribution. The priority will be represented as a number between 0 and 65535 where a lower number indicates a higher priority. When a route is processed, statements are applied in the order defined by their priority. The first matching rule dictates the action that will be taken on the route."
  value       = oci_core_drg_route_distribution_statement.this.priority
}
