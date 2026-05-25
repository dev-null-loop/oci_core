variable "compartment_id" {
  description = "(Required) (Updatable) The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the compartment containing the instance configuration."
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

variable "instance_details" {
  description = "(Optional) An array of instance details."
  type = object({
    instance_type = string
    block_volumes = optional(list(object({
      attach_details = optional(object({
        type                                = string
        device                              = optional(string)
        display_name                        = optional(string)
        is_pv_encryption_in_transit_enabled = optional(bool)
        is_read_only                        = optional(bool)
        is_shareable                        = optional(bool)
        use_chap                            = optional(bool)
      }))
      create_details = optional(object({
        autotune_policies = optional(list(object({
          autotune_type   = string
          max_vpus_per_gb = optional(string)
        })), [])
        availability_domain = optional(string)
        backup_policy_id    = optional(string)
        block_volume_replicas = optional(object({
          availability_domain = string
          display_name        = optional(string)
        }))
        cluster_placement_group_id = optional(string)
        compartment_id             = optional(string)
        defined_tags               = optional(map(string))
        display_name               = optional(string)
        freeform_tags              = optional(map(string))
        is_auto_tune_enabled       = optional(bool)
        kms_key_id                 = optional(string)
        size_in_gbs                = optional(string)
        source_details = optional(object({
          type = string
          id   = optional(string)
        }))
        vpus_per_gb    = optional(string)
        xrc_kms_key_id = optional(string)
      }))
      volume_id = optional(string)
    })), [])
    launch_details = optional(object({
      agent_config = optional(object({
        are_all_plugins_disabled = optional(bool)
        is_management_disabled   = optional(bool)
        is_monitoring_disabled   = optional(bool)
        plugins_config = optional(list(object({
          desired_state = optional(string)
          name          = optional(string)
        })), [])
      }))
      availability_config = optional(object({
        is_live_migration_preferred = optional(bool)
        recovery_action             = optional(string)
      }))
      availability_domain        = optional(string)
      capacity_reservation_id    = optional(string)
      cluster_placement_group_id = optional(string)
      compartment_id             = optional(string)
      compute_cluster_id         = optional(string)
      create_vnic_details = optional(object({
        assign_ipv6ip             = optional(bool)
        assign_private_dns_record = optional(bool)
        assign_public_ip          = optional(bool)
        defined_tags              = optional(map(string))
        display_name              = optional(string)
        freeform_tags             = optional(map(string))
        hostname_label            = optional(string)
        ipv6address_ipv6subnet_cidr_pair_details = optional(list(object({
          ipv6address     = optional(string)
          ipv6id          = optional(string)
          ipv6subnet_cidr = optional(string)
        })), [])
        nsg_ids                = optional(list(string))
        private_ip             = optional(string)
        private_ip_id          = optional(string)
        security_attributes    = optional(map(string))
        skip_source_dest_check = optional(bool)
        subnet_cidr            = optional(string)
        subnet_id              = optional(string)
      }))
      dedicated_vm_host_id = optional(string)
      defined_tags         = optional(map(string))
      display_name         = optional(string)
      extended_metadata    = optional(map(string))
      fault_domain         = optional(string)
      freeform_tags        = optional(map(string))
      instance_options = optional(object({
        are_legacy_imds_endpoints_disabled = optional(bool)
      }))
      ipxe_script                         = optional(string)
      is_ai_enterprise_enabled            = optional(bool)
      is_pv_encryption_in_transit_enabled = optional(bool)
      launch_mode                         = optional(string)
      launch_options = optional(object({
        boot_volume_type                    = optional(string)
        firmware                            = optional(string)
        is_consistent_volume_naming_enabled = optional(bool)
        is_pv_encryption_in_transit_enabled = optional(bool)
        network_type                        = optional(string)
        remote_data_volume_type             = optional(string)
      }))
      licensing_configs = optional(list(object({
        type         = string
        license_type = optional(string)
      })), [])
      metadata = optional(map(string))
      placement_constraint_details = optional(object({
        compute_host_group_id = string
        type                  = string
      }))
      platform_config = optional(object({
        type                                           = string
        are_virtual_instructions_enabled               = optional(bool)
        config_map                                     = optional(map(string))
        is_access_control_service_enabled              = optional(bool)
        is_input_output_memory_management_unit_enabled = optional(bool)
        is_measured_boot_enabled                       = optional(bool)
        is_memory_encryption_enabled                   = optional(bool)
        is_secure_boot_enabled                         = optional(bool)
        is_symmetric_multi_threading_enabled           = optional(bool)
        is_trusted_platform_module_enabled             = optional(bool)
        numa_nodes_per_socket                          = optional(string)
        percentage_of_cores_enabled                    = optional(number)
      }))
      preemptible_instance_config = optional(object({
        preemption_action = optional(object({
          type                 = string
          preserve_boot_volume = optional(bool)
        }))
      }))
      preferred_maintenance_action = optional(string)
      security_attributes          = optional(map(string))
      shape                        = optional(string)
      shape_config = optional(object({
        baseline_ocpu_utilization = optional(string)
        memory_in_gbs             = optional(number)
        nvmes                     = optional(number)
        ocpus                     = optional(number)
        resource_management       = optional(string)
        vcpus                     = optional(number)
      }))
      source_details = optional(object({
        source_type             = string
        boot_volume_id          = optional(string)
        boot_volume_size_in_gbs = optional(string)
        boot_volume_vpus_per_gb = optional(string)
        image_id                = optional(string)
        kms_key_id              = optional(string)
        instance_source_image_filter_details = optional(object({
          compartment_id           = optional(string)
          defined_tags_filter      = optional(map(string))
          operating_system         = optional(string)
          operating_system_version = optional(string)
        }))
      }))
    }))
  })
}
