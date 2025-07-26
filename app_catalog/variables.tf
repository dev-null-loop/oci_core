variable "compartment_id" {
  description = "Compartment OCID"
  type        = string
}

variable "publisher_name" {
  description = "Publisher Name"
  type        = string
  default     = "OpenVPN"

}

variable "listing_resource_version" {
  description = "Resource Version"
  default     = "AS_2.11.3"
  type        = string
}

variable "freeform_tags" {
  description = "Free-form tags for this resource"
  type        = map(string)
}
