variable "compartment_id" {
  description = "(Required) The compartmentID for the subscription."
  type        = string
}

variable "eula_link" {
  description = "(Optional) EULA link"
  type        = string
  default     = null
}

variable "listing_id" {
  description = "(Required) The OCID of the listing."
  type        = string
}

variable "listing_resource_version" {
  description = "(Required) Listing resource version."
  type        = string
}

variable "oracle_terms_of_use_link" {
  description = "(Required) Oracle TOU link"
  type        = string
}

variable "signature" {
  description = "(Required) A generated signature for this listing resource version retrieved the agreements API."
  type        = string
}

variable "time_retrieved" {
  description = "(Required) Date and time the agreements were retrieved, in [RFC3339](https://tools.ietf.org/html/rfc3339) format. Example: `2018-03-20T12:32:53.532Z`"
  type        = string
}
