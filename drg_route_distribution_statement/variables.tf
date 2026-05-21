variable "drg_route_distribution_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the route distribution."
  type        = string
}

variable "action" {
  description = "(Required) Accept: import/export the route \"as is\""
  type        = string
}

variable "match_criteria" {
  description = "(Required) (Updatable) The action is applied only if all of the match criteria are met. MATCH_ALL match type implies any input is considered a match."
  type = object({
    attachment_type   = optional(string)
    drg_attachment_id = optional(string)
    match_type        = optional(string)
  })
}

variable "priority" {
  description = "(Required) (Updatable) This field is used to specify the priority of each statement in a route distribution. The priority will be represented as a number between 0 and 65535 where a lower number indicates a higher priority. When a route is processed, statements are applied in the order defined by their priority. The first matching rule dictates the action that will be taken on the route."
  type        = number
}
