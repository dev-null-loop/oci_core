variable "vcn_id" {
  description = "The OCID of the default DRG route table to be assigned to DRG attachments of type VCN"
  type        = string
}

variable "drg_id" {
  description = "The OCID of the DRG"
  type        = string
}

variable "display_name" {
  description = "Name of the dynamic routing gateway"
  type        = string
}

variable "freeform_tags" {
  description = "Free form tags applied to organize and list multiple DRGs"
  type        = map(string)
  default     = {}
}
