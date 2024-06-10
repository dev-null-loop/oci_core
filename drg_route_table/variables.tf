variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = "route_table"
}

variable "drg_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG the DRG route table belongs to."
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "import_drg_route_distribution_id" {
  description = "(Optional) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the import route distribution used to specify how incoming route advertisements through referenced attachments are inserted into the DRG route table."
  type        = string
  default     = null
}

variable "is_ecmp_enabled" {
  description = "(Optional) (Updatable) If you want traffic to be routed using ECMP across your virtual circuits or IPSec tunnels to your on-premises networks, enable ECMP on the DRG route table."
  type        = bool
  default     = false
}

# variable "remove_import_trigger"{
#   description="(Optional) (Updatable) An optional property when flipped disables the import of route Distribution by setting import_drg_route_distribution_id to null."
