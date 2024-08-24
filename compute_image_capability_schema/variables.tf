variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment that contains the resource."
  type        = string
}

variable "compute_global_image_capability_schema_version_name" {
  description = "(Required) The name of the compute global image capability schema version"
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

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "image_id" {
  description = "(Required) The ocid of the image"
  type        = string
}

variable "descriptors" {
  type = list(string)
  default = [
    "Compute.AMD_SecureEncryptedVirtualization",
    "Compute.Firmware",
    "Compute.LaunchMode",
    "Compute.SecureBoot",
    "Network.AttachmentType",
    "Network.IPv6Only",
    "Storage.BootVolumeType",
    "Storage.ConsistentVolumeNaming",
    "Storage.Iscsi.MultipathDeviceSupported",
    "Storage.LocalDataVolumeType",
    "Storage.ParaVirtualization.AttachmentVersion",
    "Storage.ParaVirtualization.EncryptionInTransit",
    "Storage.RemoteDataVolumeType"
  ]
}

variable "schema_data" {
  description = "(Required) (Updatable) The map of each capability name to its ImageCapabilitySchemaDescriptor."
  type = map(object({
    descriptorType = string
    defaultValue   = bool
    source         = string
    values         = optional(list(string))
  }))
}
