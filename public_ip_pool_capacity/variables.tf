variable "public_ip_pool_id" {
  description = "(Required) The OCID of the pool object created by the current tenancy"
  type        = string
}

variable "byoip_id" {
  description = "(Required) The OCID of the Byoip Range Id object to which the cidr block belongs."
  type        = string
}

variable "cidr_block" {
  description = "(Required) The CIDR IP address range to be added to the Public Ip Pool. Example: `10.0.1.0/24`"
  type        = string
}
