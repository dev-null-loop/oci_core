variable "availability_domain" {
  description = "(Required) The availability domain of the GPU Memory Cluster."
  type        = string
}

variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment that contains the compute GPU Memory Cluster. compartment."
  type        = string
}

variable "compute_cluster_id" {
  description = "(Required) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compute cluster."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Operations.CostCenter\": \"42\"}`"
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Optional) (Updatable) A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).  Example: `{\"Department\": \"Finance\"}`"
  type        = map(string)
  default     = {}
}

variable "gpu_memory_cluster_scale_config" {
  description = "(Optional) (Updatable) Configuration settings for GPU Memory Cluster scaling."
  type = object({
    is_downsize_enabled = optional(bool)
    is_upsize_enabled   = bool
    target_size         = optional(string)
  })
  default = null
}

variable "gpu_memory_fabric_id" {
  description = "(Optional) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the GPU memory fabric."
  type        = string
  default     = null
}

variable "instance_configuration_id" {
  description = "(Required) (Updatable) Instance Configuration to be used for this GPU Memory Cluster"
  type        = string
}

variable "private_ip_ids" {
  description = "(Optional) (Updatable) Unique list of OCIDs for private IPs (IPv4/IPv6) associated with the GPU Memory Cluster"
  type        = list(string)
  default     = []
}

variable "size" {
  description = "(Optional) (Updatable) The desired number of instances for the GPU Memory Cluster."
  type        = string
  default     = null
}
