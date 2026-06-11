variable "availability_domain" {
  description = "(Required) The availability domain of the instance."
  type        = string
}

variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment."
  type        = string
}

variable "agent_config" {
  description = "(Optional) (Updatable) Configuration options for the Oracle Cloud Agent software running on the instance."
  type = object({
    are_all_plugins_disabled = optional(bool)
    is_management_disabled   = optional(bool)
    is_monitoring_disabled   = optional(bool)
    plugins_config = optional(list(object({
      desired_state = string
      name          = string
    })), [])
  })
  default = null
}

variable "availability_config" {
  description = "(Optional) (Updatable) Configuration for compute host migration and recovery behavior."
  type = object({
    is_live_migration_preferred = optional(bool)
    recovery_action             = optional(string)
  })
  default = null
}

variable "cluster_placement_group_id" {
  description = "(Optional) The OCID of the cluster placement group of the instance."
  type        = string
  default     = null
}

variable "compute_cluster_id" {
  description = "(Optional) The OCID of the compute cluster of the instance."
  type        = string
  default     = null
}

variable "compute_host_group_id" {
  description = "(Optional) The OCID of the compute host group of the instance."
  type        = string
  default     = null
}

variable "create_vnic_details" {
  description = "(Optional) (Updatable) Contains properties for a VNIC. You use this object when creating the primary VNIC during instance launch or when creating a secondary VNIC. For more information about VNICs, see [Virtual Network Interface Cards (VNICs)](https://docs.cloud.oracle.com/iaas/Content/Network/Tasks/managingVNICs.htm)."
  type = object({
    assign_ipv6ip             = optional(bool, false)
    assign_private_dns_record = optional(bool)
    assign_public_ip          = optional(bool, false)
    defined_tags              = optional(map(string), null)
    display_name              = optional(string)
    freeform_tags             = optional(map(string), {})
    hostname_label            = optional(string)
    ipv6address_ipv6subnet_cidr_pair_details = optional(list(object({
      ipv6address     = optional(string)
      ipv6id          = optional(string)
      ipv6subnet_cidr = optional(string)
    })), [])
    nsg_ids                = optional(list(string), [])
    private_ip             = optional(string, null)
    private_ip_id          = optional(string)
    security_attributes    = optional(map(string), null)
    skip_source_dest_check = optional(bool, false)
    subnet_cidr            = optional(string)
    subnet_id              = string
    vlan_id                = optional(string)
  })
  default = null
}

variable "dedicated_vm_host_id" {
  description = "(Optional) (Updatable) The OCID of the dedicated virtual machine host to place the instance on."
  type        = string
  default     = null
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

variable "extended_metadata" {
  description = "(Optional) Additional metadata key/value pairs for the instance."
  type        = map(string)
  default     = null
}

variable "fault_domain" {
  description = "(Optional) (Updatable) A fault domain is a grouping of hardware and infrastructure within an availability domain. Each availability domain contains three fault domains. Fault domains let you distribute your instances so that they are not on the same physical hardware within a single availability domain. A hardware failure or Compute hardware maintenance that affects one fault domain does not affect instances in other fault domains."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "hostname_label" {
  description = "(Optional) (Updatable) The hostname for the VNIC's primary private IP. Used for DNS. The value is the hostname portion of the primary private IP's fully qualified domain name (FQDN) (for example, `bminstance1` in FQDN `bminstance1.subnet123.vcn1.oraclevcn.com`). Must be unique across all VNICs in the subnet and comply with [RFC 952](https://tools.ietf.org/html/rfc952) and [RFC 1123](https://tools.ietf.org/html/rfc1123). The value appears in the [Vnic](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/Vnic/) object and also the [PrivateIp](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/PrivateIp/) object returned by [ListPrivateIps](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/PrivateIp/ListPrivateIps) and [GetPrivateIp](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/latest/PrivateIp/GetPrivateIp)."
  type        = string
  default     = null
}

variable "instance_configuration_id" {
  description = "(Optional) The OCID of the Instance Configuration containing instance launch details. Any other fields supplied in this instance launch request will override the details stored in the Instance Configuration for this instance launch."
  type        = string
  default     = null
}

variable "are_legacy_imds_endpoints_disabled" {
  description = "(Optional) (Updatable) Whether to disable the legacy (/v1) instance metadata service endpoints. Customers who have migrated to /v2 should set this to true for added security. Default is false."
  type        = bool
  default     = true
}

variable "ipxe_script" {
  description = "(Optional) iPXE script used to boot the instance."
  type        = string
  default     = null
}

variable "is_pv_encryption_in_transit_enabled" {
  description = "(Optional) Whether to enable in-transit encryption for the data volume's paravirtualized attachment. The default value is false. Use this field only during create. To update use `is_pv_encryption_in_transit_enabled` under `launch_options` instead."
  type        = bool
  default     = false
}

variable "launch_options" {
  description = "(Optional) (Updatable) Optional launch settings for firmware, network and storage behavior."
  type = object({
    boot_volume_type                    = optional(string)
    firmware                            = optional(string)
    is_consistent_volume_naming_enabled = optional(bool)
    is_pv_encryption_in_transit_enabled = optional(bool)
    network_type                        = optional(string)
    remote_data_volume_type             = optional(string)
  })
  default = null
}

variable "metadata" {
  description = "(Optional) (Updatable) Custom metadata key/value pairs that you provide, such as the SSH public key required to connect to the instance."
  type        = map(string)
  default     = null
}

variable "enable_vnic_lookup_outputs" {
  description = "(Optional) Whether to resolve `vnic_id` and `primary_private_ip_id` via additional VNIC and private IP data lookups."
  type        = bool
  default     = true
}

variable "shape" {
  description = "(Required) (Updatable) The shape of an instance. The shape determines the number of CPUs, amount of memory, and other resources allocated to the instance."
  type        = string
}

variable "shape_config" {
  description = "(Optional) (Updatable) The shape configuration requested for the instance."
  type = object({
    baseline_ocpu_utilization = optional(string)
    memory_in_gbs             = optional(number)
    nvmes                     = optional(number)
    ocpus                     = optional(number)
    vcpus                     = optional(number)
  })
  default = null
}

variable "source_details" {
  description = "(Optional) Details for creating an instance. Use this to specify either an image or a boot volume."
  type = object({
    source_id                       = optional(string)
    source_type                     = optional(string, "image")
    boot_volume_size_in_gbs         = optional(number, 50)
    boot_volume_vpus_per_gb         = optional(number)
    kms_key_id                      = optional(string)
    is_preserve_boot_volume_enabled = optional(bool)
    instance_source_image_filter_details = optional(object({
      compartment_id           = optional(string)
      defined_tags_filter      = optional(map(string))
      operating_system         = optional(string)
      operating_system_version = optional(string)
    }))
  })
}

variable "preserve_boot_volume" {
  description = "(Optional) Preserve boot volume at instance termination"
  type        = bool
  default     = false
}

variable "state" {
  description = "(Optional) (Updatable) The target state for the instance. Could be set to RUNNING or STOPPED."
  type        = string
  default     = "RUNNING"
}
