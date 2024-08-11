variable "attachment_type" {
  description = "(Required) The type of volume. The only supported values are iscsi and paravirtualized."
  type        = string
}

variable "instance_id" {
  description = "(Required) The OCID of the instance."
  type        = string
}

variable "volume_id" {
  description = "(Required) The OCID of the volume."
  type        = string
}

variable "device" {
  description = "(Optional) The device name. To retrieve a list of devices for a given instance, see [ListInstanceDevices](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/Device/ListInstanceDevices)."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(Optional) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "encryption_in_transit_type" {
  description = "(Applicable when attachment_type=iscsi) Refer the top-level definition of encryptionInTransitType. The default value is NONE."
  type        = string
  default     = null
}

variable "is_agent_auto_iscsi_login_enabled" {
  description = "(Applicable when attachment_type=iscsi) Whether to enable Oracle Cloud Agent to perform the iSCSI login and logout commands after the volume attach or detach operations for non multipath-enabled iSCSI attachments."
  type        = bool
  default     = false
}

variable "is_pv_encryption_in_transit_enabled" {
  description = "(Applicable when attachment_type=paravirtualized) Whether to enable in-transit encryption for the data volume's paravirtualized attachment. The default value is false."
  type        = bool
  default     = false
}

variable "is_read_only" {
  description = "(Optional) Whether the attachment was created in read-only mode."
  type        = bool
  default     = false
}

variable "is_shareable" {
  description = "(Optional) Whether the attachment should be created in shareable mode. If an attachment is created in shareable mode, then other instances can attach the same volume, provided that they also create their attachments in shareable mode. Only certain volume types can be attached in shareable mode. Defaults to false if not specified."
  type        = bool
  default     = false
}

variable "use_chap" {
  description = "(Applicable when attachment_type=iscsi) Whether to use CHAP authentication for the volume attachment. Defaults to false."
  type        = bool
  default     = false
}
