variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment."
  type        = string
}

variable "availability_domain" {
  description = "(Required) The availability domain of the instance.  Example: `Uocm:PHX-AD-1`"
  type        = number
}

variable "fault_domain" {
  description = "(Optional) (Updatable) A fault domain is a grouping of hardware and infrastructure within an availability domain. Each availability domain contains three fault domains. Fault domains let you distribute your instances so that they are not on the same physical hardware within a single availability domain. A hardware failure or Compute hardware maintenance that affects one fault domain does not affect instances in other fault domains."
  type        = number
  default     = 1
}

variable "shape" {
  description = "(Required) (Updatable) The shape of an instance. The shape determines the number of CPUs, amount of memory, and other resources allocated to the instance."
  type        = string
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information. "
  type        = string
  default     = null
}

variable "preserve_boot_volume" {
  description = "Preserve boot volume at instance termination"
  type        = bool
  default     = false
}

variable "freeform_tags" {
  description = "Free-form tags for this resource"
  type        = map(string)
  default     = {}
}

variable "is_pv_encryption_in_transit_enabled" {
  description = "(Optional) Whether to enable in-transit encryption for the data volume's paravirtualized attachment. The default value is false. Use this field only during create. To update use `is_pv_encryption_in_transit_enabled` under `launch_options` instead."
  type        = bool
  default     = false
}

# variable "agent_config" {
#   description = "(Optional) (Updatable) Configuration options for the Oracle Cloud Agent software running on the instance."
#   type = object({
#     are_all_plugins_disabled = optional(bool)
#     is_management_disabled   = optional(bool)
#     is_monitoring_disabled   = optional(bool)
#     enabled_plugins          = optional(list(string))
#   })
#   default = {}
#   # TODO: add validation for enabled_plugin items
#   # "Vulnerability Scanning", "Oracle Java Management Service", "Oracle Autonomous Linux", "OS Management Service Agent", "Management Agent"
#   # "Custom Logs Monitoring", "Compute RDMA GPU Monitoring", "Compute Instance Run Command", "Compute Instance Monitoring", "Compute HPC RDMA Auto-Configuration"
#   # "Compute HPC RDMA Authentication", "Block Volume Management", "Bastion"
# }

# variable "source_details" {
#   description = "(Optional) (Updatable)"
#   type = object({
#     boot_volume_size_in_gbs = number
#     boot_volume_vpus_per_gb = optional(number)
#     kms_key_id              = optional(string)
#     source_id               = string
#     source_type             = string
#   })
#   default = {
#     boot_volume_size_in_gbs = 50
#     source_type             = "image"
#     source_id               = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaa4spflbevnkvycivfnh2pxcrccmiftfv3ifkxeyx3sdc2zduvdxjq"
#   }
# }

# variable "create_vnic_details" {
#   description = " (Optional) (Updatable) Contains properties for a VNIC. You use this object when creating the primary VNIC during instance launch or when creating a secondary VNIC. For more information about VNICs, see [Virtual Network Interface Cards (VNICs)](https://docs.cloud.oracle.com/iaas/Content/Network/Tasks/managingVNICs.htm)."
#   type = object({
#     assign_ipv6ip             = optional(bool)
#     assign_private_dns_record = optional(bool)
#     assign_public_ip          = optional(bool)
#     defined_tags              = optional(map(string))
#     display_name              = optional(string)
#     freeform_tags             = optional(map(string))
#     hostname_label            = optional(string)
#     nsg_ids                   = optional(list(string))
#     private_ip                = optional(string)
#     skip_source_dest_check    = optional(bool)
#     subnet_id                 = string
#   })
# }

variable "are_all_plugins_disabled" {
  type    = bool
  default = false
}

variable "is_management_disabled" {
  type    = bool
  default = false
}

variable "is_monitoring_disabled" {
  type    = bool
  default = false
}

variable "enabled_plugins" {
  type    = list(string)
  default = []
}

variable "boot_volume_size_in_gbs" {
  type    = number
  default = 50
}

variable "boot_volume_vpus_per_gb" {
  type    = number
  default = 10
}

variable "kms_key_id" {
  type    = string
  default = null
}

variable "source_id" {
  type = string
}

variable "source_type" {
  type    = string
  default = "image"
}

variable "assign_public_ip" {
  type    = bool
  default = false
}

variable "skip_source_dest_check" {
  description = "(Optional) (Updatable) Whether the source/destination check is disabled on the VNIC. Defaults to `false`, which means the check is performed. For information about why you would skip the source/destination check, see [Using a Private IP as a Route Target](https://docs.cloud.oracle.com/iaas/Content/Network/Tasks/managingroutetables.htm#privateip)."
  type        = bool
  default     = false
}

variable "nsg_ids" {
  type    = list(string)
  default = []
}

variable "subnet_id" {
  type = string
}

variable "shape_config" {
  description = "(Optional) (Updatable) The shape configuration requested for the instance"
  type = object({
    gpus                          = optional(number)
    local_disks                   = optional(number)
    local_disks_total_size_in_gbs = optional(number)
    max_vnic_attachments          = optional(number)
    memory_in_gbs                 = optional(number)
    networking_bandwidth_in_gbps  = optional(number)
    baseline_ocpu_utilization     = optional(string)
    nvmes                         = optional(number)
    ocpus                         = optional(number)
    vcpus                         = optional(number)
  })
  default = {
    ocpus         = 2
    memory_in_gbs = 2
  }
}

variable "ssh_public_keys" {
  description = "List of SSH public key to connect to the instance."
  type        = string
  default     = null
}

variable "cloud_init" {
  type = map(object({
    filename = optional(string)
    vars     = optional(map(string))
  }))
  default = {}
}

variable "state" {
  description = "(Optional) (Updatable) The target state for the instance. Could be set to RUNNING or STOPPED."
  type        = string
  default     = "RUNNING"
}

variable "instance_configuration_id" {
  description = "(Optional) The OCID of the Instance Configuration containing instance launch details. Any other fields supplied in this instance launch request will override the details stored in the Instance Configuration for this instance launch."
  type        = string
  default     = null
}

variable "assign_ipv6ip" {
  description = "(Optional) Whether to allocate an IPv6 address at instance and VNIC creation from an IPv6 enabled subnet. Default: False. When provided you may optionally provide an IPv6 prefix (`ipv6SubnetCidr`) of your choice to assign the IPv6 address from. If `ipv6SubnetCidr` is not provided then an IPv6 prefix is chosen for you. "
  type        = bool
  default     = false
}

variable "private_ip" {
  type    = string
  default = null
}
