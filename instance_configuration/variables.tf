variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the instance configuration."
  type        = string
}

variable "deferred_fields" {
  description = "Parameters that were not specified when the instance configuration was created, but that are required to launch an instance from the instance configuration. See the [LaunchInstanceConfiguration](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/Instance/LaunchInstanceConfiguration) operation."
  type        = list(string)
  default     = ["instanceDetails.launchDetails.createVnicDetails"]
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "availability_domain" {
  description = "(Applicable when instance_type=compute) The availability domain of the volume.  Example: `Uocm:PHX-AD-1`"
  type        = number
  default     = 1
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = "ic"
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "instance_type" {
  description = "(Required) The type of instance details. Supported instanceType is compute"
  type        = string
}

variable "create_details" {
  description = " (Applicable when instance_type=compute) Creates a new block volume. Please see [CreateVolumeDetails](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/CreateVolumeDetails/)"
  type = object({
    availability_domain = number
    compartment_id      = string
    display_name        = string
    kms_key_id          = string
    size_in_gbs         = number
    freeform_tags       = map(string)
  })
}

variable "shape" {
  description = "(Applicable when instance_type=compute) The shape of an instance. The shape determines the number of CPUs, amount of memory, and other resources allocated to the instance."
  type        = string
  default     = "VM.Standard2.1"
}

variable "attach_details" {
  description = "(Applicable when instance_type=compute) Volume attachmentDetails. Please see [AttachVolumeDetails](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/AttachVolumeDetails/)"
  type = object({
    type         = string
    is_read_only = bool
    is_shareable = bool
  })
}

variable "launch_details" {
  type = object({
    availability_domain  = number
    compartment_id       = string
    shape                = string
    dedicated_vm_host_id = optional(string)
    defined_tags         = optional(map(string))
    display_name         = optional(string)
    extended_metadata    = optional(map(string))
    fault_domain         = number
    freeform_tags        = optional(map(string))
    create_vnic_details = optional(object({
      assign_ipv6ip             = optional(bool)
      assign_private_dns_record = optional(bool)
      assign_public_ip          = optional(bool)
      defined_tags              = optional(bool)
      display_name              = optional(string)
      freeform_tags             = optional(map(string))
      hostname_label            = optional(string)
      nsg_ids                   = optional(list(string))
      private_ip                = optional(string)
      security_attributes       = optional(list(string))
      skip_source_dest_check    = optional(bool)
      subnet_id                 = optional(string)
    }))
    source_details = object({
      source_type             = string
      image_id                = optional(string)
      boot_volume_id          = optional(string)
      boot_volume_size_in_gbs = optional(number)
      boot_volume_vpus_per_gb = optional(number)
      kms_key_id              = optional(string)
      instance_source_image_filter_details = optional(object({
	compartment_id           = optional(string)
	defined_tags_filter      = optional(string)
	operating_system         = optional(string)
	operating_system_version = optional(string)
      }))
    })
  })
  default = null
}
