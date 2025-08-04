variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment to contain the cross-connect."
  type        = string
}

variable "cross_connect_group_id" {
  description = "(Optional) The OCID of the cross-connect group to put this cross-connect in."
  type        = string
  default     = null
}

variable "customer_reference_name" {
  description = "(Optional) (Updatable) A reference name or identifier for the physical fiber connection that this cross-connect uses."
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information. "
  type        = string
  default     = null
}

variable "far_cross_connect_or_cross_connect_group_id" {
  description = "(Optional) If you already have an existing cross-connect or cross-connect group at this FastConnect location, and you want this new cross-connect to be on a different router (for the purposes of redundancy), provide the [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of that existing cross-connect or cross-connect group."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "is_active" {
  description = "(Optional) (Updatable) Set to true to activate the cross-connect. You activate it after the physical cabling is complete, and you've confirmed the cross-connect's light levels are good and your side of the interface is up. Activation indicates to Oracle that the physical connection is ready."
  type        = bool
  default     = true
}

variable "location_name" {
  description = "(Required) The name of the FastConnect location where this cross-connect will be installed. To get a list of the available locations, see [ListCrossConnectLocations](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/CrossConnectLocation/ListCrossConnectLocations).  Example: `CyrusOne, Chandler, AZ`"
  type        = string
}

variable "macsec_properties" {
  description = "(Optional) (Updatable) Properties used to configure MACsec (if capable)."
  type = object({
    encryption_cipher              = optional(string)
    is_unprotected_traffic_allowed = optional(bool)
    primary_key = optional(object({
      connectivity_association_key_secret_id       = string
      connectivity_association_key_secret_version  = optional(string)
      connectivity_association_name_secret_id      = string
      connectivity_association_name_secret_version = optional(string)
    }))
    state = string
  })
  default = null
}

variable "near_cross_connect_or_cross_connect_group_id" {
  description = "(Optional) If you already have an existing cross-connect or cross-connect group at this FastConnect location, and you want this new cross-connect to be on the same router, provide the [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of that existing cross-connect or cross-connect group."
  type        = string
  default     = null
}

variable "port_speed_shape_name" {
  description = "(Required) The port speed for this cross-connect. To get a list of the available port speeds, see [ListCrossConnectPortSpeedShapes](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/CrossConnectPortSpeedShape/ListCrossconnectPortSpeedShapes).  Example: `10 Gbps`"
  type        = string
}
