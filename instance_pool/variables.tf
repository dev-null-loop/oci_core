variable "compartment_id" {
  description = "ID of the compartment where the resources will be created"
  type        = string
  validation {
    condition     = length(var.compartment_id) > 18 && substr(var.compartment_id, 0, 18) == "ocid1.compartment."
    error_message = "The compartment ID must be a valid OCID, starting with \"ocid1.compartment.\"."
  }
}

variable "freeform_tags" {
  description = "Placeholder for the free form tags applied to the resources"
  type        = map(string)
  default     = {}
}
