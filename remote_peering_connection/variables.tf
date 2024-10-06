variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment to contain the RPC."
  type        = string
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = "Requestor"
}

variable "drg_ids" {
  description = "(Required) Maps of drg ocid to select from the requestor/acceptor pair"
  type        = map(string)
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)"
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "peer_region_name" {
  description = "(Optional) The name of the region that contains the RPC you want to peer with.  Example: `us-ashburn-1`"
  type        = string
}
