variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the capture filter."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "filter_type" {
  description = "(Required) Indicates which service will use this capture filter"
  type        = string
}

variable "flow_log_capture_filter_rules" {
  description = "(Optional) (Updatable) The set of rules governing what traffic the Flow Log collects when creating a flow log capture filter."
  type = list(object({
    destination_cidr = optional(string)
    flow_log_type    = optional(string)
    icmp_options = optional(object({
      code = optional(string)
      type = number
    }))
    is_enabled    = optional(bool)
    priority      = optional(number)
    protocol      = optional(number)
    rule_action   = optional(string)
    sampling_rate = optional(number)
    source_cidr   = optional(string)
    tcp_options = optional(object({
      destination_port_range = optional(object({
        max = number
        min = number
      }))
      source_port_range = optional(object({
        max = number
        min = number
      }))
    }))
    udp_options = optional(object({
      destination_port_range = optional(object({
        max = number
        min = number
      }))
      source_port_range = optional(object({
        max = number
        min = number
      }))
    }))
  }))
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

# variable "vtap_capture_filter_rules"{
# description="(Optional) (Updatable) The set of rules governing what traffic a VTAP mirrors.
#	variable "destination_cidr"{
# description="(Optional) (Updatable) Traffic sent to this CIDR block through the VTAP source will be mirrored to the VTAP target.
#	variable "icmp_options"{
# description="(Optional) (Updatable) Optional and valid only for ICMP and ICMPv6. Use to specify a particular ICMP type and code as defined in:
#		* [ICMP Parameters](http://www.iana.org/assignments/icmp-parameters/icmp-parameters.xhtml)
#		* [ICMPv6 Parameters](https://www.iana.org/assignments/icmpv6-parameters/icmpv6-parameters.xhtml)

#		If you specify ICMP or ICMPv6 as the protocol but omit this object, then all ICMP types and codes are allowed. If you do provide this object, the type is required and the code is optional. To enable MTU negotiation for ingress internet traffic via IPv4, make sure to allow type 3 ("Destination Unreachable") code 4 ("Fragmentation Needed and Don't Fragment was Set"). If you need to specify multiple codes for a single type, create a separate security list rule for each.
#		variable "code"{
# description="(Optional) (Updatable) The ICMP code (optional).
#		variable "type"{
# description="(Required) (Updatable) The ICMP type.
#	variable "protocol"{
# description="(Optional) (Updatable) The transport protocol used in the filter. If do not choose a protocol, all protocols will be used in the filter. Supported options are:
#		* 1 = ICMP
#		* 6 = TCP
#		* 17 = UDP
#	variable "rule_action"{
# description="(Optional) (Updatable) Include or exclude packets meeting this definition from mirrored traffic.
#	variable "source_cidr"{
# description="(Optional) (Updatable) Traffic from this CIDR block to the VTAP source will be mirrored to the VTAP target.
#	variable "tcp_options"{
# description="(Optional) (Updatable) Optional and valid only for TCP. Use to specify particular destination ports for TCP rules. If you specify TCP as the protocol but omit this object, then all destination ports are allowed.
#		variable "destination_port_range"{
# description="(Optional) (Updatable)
#			variable "max"{
# description="(Required) (Updatable) The maximum port number, which must not be less than the minimum port number. To specify a single port number, set both the min and max to the same value.
#			variable "min"{
# description="(Required) (Updatable) The minimum port number, which must not be greater than the maximum port number.
#		variable "source_port_range"{
# description="(Optional) (Updatable)
#			variable "max"{
# description="(Required) (Updatable) The maximum port number, which must not be less than the minimum port number. To specify a single port number, set both the min and max to the same value.
#			variable "min"{
# description="(Required) (Updatable) The minimum port number, which must not be greater than the maximum port number.
#	variable "traffic_direction"{
# description="(Required) (Updatable) The traffic direction the VTAP is configured to mirror.
#	variable "udp_options"{
# description="(Optional) (Updatable) Optional and valid only for UDP. Use to specify particular destination ports for UDP rules. If you specify UDP as the protocol but omit this object, then all destination ports are allowed.
#		variable "destination_port_range"{
# description="(Optional) (Updatable)
#			variable "max"{
# description="(Required) (Updatable) The maximum port number, which must not be less than the minimum port number. To specify a single port number, set both the min and max to the same value.
#			variable "min"{
# description="(Required) (Updatable) The minimum port number, which must not be greater than the maximum port number.
#		variable "source_port_range"{
# description="(Optional) (Updatable)
#			variable "max"{
# description="(Required) (Updatable) The maximum port number, which must not be less than the minimum port number. To specify a single port number, set both the min and max to the same value.
#			variable "min"{
# description="(Required) (Updatable) The minimum port number, which must not be greater than the maximum port number."
# type=string
# }
