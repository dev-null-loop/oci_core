variable "drg_route_table_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DRG route table."
  type        = string
}

variable "destination" {
  description = "(Required) (Updatable) This is the range of IP addresses used for matching when routing traffic. Only CIDR_BLOCK values are allowed."
  type        = string
}

variable "destination_type" {
  description = "(Required) Type of destination for the rule. Required if `direction` = `EGRESS`. Allowed values:\n* `CIDR_BLOCK`: If the rule's `destination` is an IP address range in CIDR notation."
  type        = string
}

variable "next_hop_drg_attachment_id" {
  description = "(Required)  The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the next hop DRG attachment. The next hop DRG attachment is responsible for reaching the network destination."
  type        = string
}
