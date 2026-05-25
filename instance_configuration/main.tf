resource "oci_core_instance_configuration" "this" {
  compartment_id = var.compartment_id
  defined_tags   = var.defined_tags
  display_name   = var.display_name
  freeform_tags  = var.freeform_tags
  instance_details {
    instance_type = var.instance_details.instance_type
    dynamic "block_volumes" {
      for_each = var.instance_details.block_volumes
      iterator = bv
      content {
        dynamic "attach_details" {
          for_each = bv.value.attach_details[*]
          iterator = ad
          content {
            type                                = ad.value.type
            device                              = ad.value.device
            display_name                        = ad.value.display_name
            is_pv_encryption_in_transit_enabled = ad.value.is_pv_encryption_in_transit_enabled
            is_read_only                        = ad.value.is_read_only
            is_shareable                        = ad.value.is_shareable
            use_chap                            = ad.value.use_chap
          }
        }
        dynamic "create_details" {
          for_each = bv.value.create_details[*]
          iterator = cd
          content {
            dynamic "autotune_policies" {
              for_each = cd.value.autotune_policies
              iterator = ap
              content {
                autotune_type   = ap.value.autotune_type
                max_vpus_per_gb = ap.value.max_vpus_per_gb
              }
            }
            availability_domain = cd.value.availability_domain
            backup_policy_id    = cd.value.backup_policy_id
            dynamic "block_volume_replicas" {
              for_each = cd.value.block_volume_replicas[*]
              iterator = bvr
              content {
                availability_domain = bvr.value.availability_domain
                display_name        = bvr.value.display_name
              }
            }
            cluster_placement_group_id = cd.value.cluster_placement_group_id
            compartment_id             = cd.value.compartment_id
            defined_tags               = cd.value.defined_tags
            display_name               = cd.value.display_name
            freeform_tags              = cd.value.freeform_tags
            is_auto_tune_enabled       = cd.value.is_auto_tune_enabled
            kms_key_id                 = cd.value.kms_key_id
            size_in_gbs                = cd.value.size_in_gbs
            dynamic "source_details" {
              for_each = cd.value.source_details[*]
              iterator = sd
              content {
                type = sd.value.type
                id   = sd.value.id
              }
            }
            vpus_per_gb    = cd.value.vpus_per_gb
            xrc_kms_key_id = cd.value.xrc_kms_key_id
          }
        }
        volume_id = bv.value.volume_id
      }
    }
    dynamic "launch_details" {
      for_each = var.instance_details.launch_details[*]
      iterator = ld
      content {
        dynamic "agent_config" {
          for_each = ld.value.agent_config[*]
          iterator = ac
          content {
            are_all_plugins_disabled = ac.value.are_all_plugins_disabled
            is_management_disabled   = ac.value.is_management_disabled
            is_monitoring_disabled   = ac.value.is_monitoring_disabled
            dynamic "plugins_config" {
              for_each = ac.value.plugins_config
              iterator = pc
              content {
                desired_state = pc.value.desired_state
                name          = pc.value.name
              }
            }
          }
        }
        dynamic "availability_config" {
          for_each = ld.value.availability_config[*]
          iterator = avc
          content {
            is_live_migration_preferred = avc.value.is_live_migration_preferred
            recovery_action             = avc.value.recovery_action
          }
        }
        availability_domain        = ld.value.availability_domain
        capacity_reservation_id    = ld.value.capacity_reservation_id
        cluster_placement_group_id = ld.value.cluster_placement_group_id
        compartment_id             = ld.value.compartment_id
        compute_cluster_id         = ld.value.compute_cluster_id
        dynamic "create_vnic_details" {
          for_each = ld.value.create_vnic_details[*]
          iterator = cvd
          content {
            assign_ipv6ip             = cvd.value.assign_ipv6ip
            assign_private_dns_record = cvd.value.assign_private_dns_record
            assign_public_ip          = cvd.value.assign_public_ip
            defined_tags              = cvd.value.defined_tags
            display_name              = cvd.value.display_name
            freeform_tags             = cvd.value.freeform_tags
            hostname_label            = cvd.value.hostname_label
            dynamic "ipv6address_ipv6subnet_cidr_pair_details" {
              for_each = cvd.value.ipv6address_ipv6subnet_cidr_pair_details
              iterator = iicpd
              content {
                ipv6address     = iicpd.value.ipv6address
                ipv6id          = iicpd.value.ipv6id
                ipv6subnet_cidr = iicpd.value.ipv6subnet_cidr
              }
            }
            nsg_ids                = cvd.value.nsg_ids
            private_ip             = cvd.value.private_ip
            private_ip_id          = cvd.value.private_ip_id
            security_attributes    = cvd.value.security_attributes
            skip_source_dest_check = cvd.value.skip_source_dest_check
            subnet_cidr            = cvd.value.subnet_cidr
            subnet_id              = cvd.value.subnet_id
          }
        }
        dedicated_vm_host_id = ld.value.dedicated_vm_host_id
        defined_tags         = ld.value.defined_tags
        display_name         = ld.value.display_name
        extended_metadata    = ld.value.extended_metadata
        fault_domain         = ld.value.fault_domain
        freeform_tags        = ld.value.freeform_tags
        dynamic "instance_options" {
          for_each = ld.value.instance_options[*]
          iterator = io
          content {
            are_legacy_imds_endpoints_disabled = io.value.are_legacy_imds_endpoints_disabled
          }
        }
        ipxe_script                         = ld.value.ipxe_script
        is_ai_enterprise_enabled            = ld.value.is_ai_enterprise_enabled
        is_pv_encryption_in_transit_enabled = ld.value.is_pv_encryption_in_transit_enabled
        launch_mode                         = ld.value.launch_mode
        dynamic "launch_options" {
          for_each = ld.value.launch_options[*]
          iterator = lo
          content {
            boot_volume_type                    = lo.value.boot_volume_type
            firmware                            = lo.value.firmware
            is_consistent_volume_naming_enabled = lo.value.is_consistent_volume_naming_enabled
            is_pv_encryption_in_transit_enabled = lo.value.is_pv_encryption_in_transit_enabled
            network_type                        = lo.value.network_type
            remote_data_volume_type             = lo.value.remote_data_volume_type
          }
        }
        dynamic "licensing_configs" {
          for_each = ld.value.licensing_configs
          iterator = lc
          content {
            type         = lc.value.type
            license_type = lc.value.license_type
          }
        }
        metadata = ld.value.metadata
        dynamic "placement_constraint_details" {
          for_each = ld.value.placement_constraint_details[*]
          iterator = pcd
          content {
            compute_host_group_id = pcd.value.compute_host_group_id
            type                  = pcd.value.type
          }
        }
        dynamic "platform_config" {
          for_each = ld.value.platform_config[*]
          iterator = pfc
          content {
            type                                           = pfc.value.type
            are_virtual_instructions_enabled               = pfc.value.are_virtual_instructions_enabled
            config_map                                     = pfc.value.config_map
            is_access_control_service_enabled              = pfc.value.is_access_control_service_enabled
            is_input_output_memory_management_unit_enabled = pfc.value.is_input_output_memory_management_unit_enabled
            is_measured_boot_enabled                       = pfc.value.is_measured_boot_enabled
            is_memory_encryption_enabled                   = pfc.value.is_memory_encryption_enabled
            is_secure_boot_enabled                         = pfc.value.is_secure_boot_enabled
            is_symmetric_multi_threading_enabled           = pfc.value.is_symmetric_multi_threading_enabled
            is_trusted_platform_module_enabled             = pfc.value.is_trusted_platform_module_enabled
            numa_nodes_per_socket                          = pfc.value.numa_nodes_per_socket
            percentage_of_cores_enabled                    = pfc.value.percentage_of_cores_enabled
          }
        }
        dynamic "preemptible_instance_config" {
          for_each = ld.value.preemptible_instance_config[*]
          iterator = pic
          content {
            dynamic "preemption_action" {
              for_each = pic.value.preemption_action[*]
              iterator = pa
              content {
                type                 = pa.value.type
                preserve_boot_volume = pa.value.preserve_boot_volume
              }
            }
          }
        }
        preferred_maintenance_action = ld.value.preferred_maintenance_action
        security_attributes          = ld.value.security_attributes
        shape                        = ld.value.shape
        dynamic "shape_config" {
          for_each = ld.value.shape_config[*]
          iterator = sc
          content {
            baseline_ocpu_utilization = sc.value.baseline_ocpu_utilization
            memory_in_gbs             = sc.value.memory_in_gbs
            nvmes                     = sc.value.nvmes
            ocpus                     = sc.value.ocpus
            resource_management       = sc.value.resource_management
            vcpus                     = sc.value.vcpus
          }
        }
        dynamic "source_details" {
          for_each = ld.value.source_details[*]
          iterator = sd
          content {
            source_type             = sd.value.source_type
            boot_volume_id          = sd.value.boot_volume_id
            boot_volume_size_in_gbs = sd.value.boot_volume_size_in_gbs
            boot_volume_vpus_per_gb = sd.value.boot_volume_vpus_per_gb
            image_id                = sd.value.image_id
            kms_key_id              = sd.value.kms_key_id
            dynamic "instance_source_image_filter_details" {
              for_each = sd.value.instance_source_image_filter_details[*]
              iterator = isifd
              content {
                compartment_id           = isifd.value.compartment_id
                defined_tags_filter      = isifd.value.defined_tags_filter
                operating_system         = isifd.value.operating_system
                operating_system_version = isifd.value.operating_system_version
              }
            }
          }
        }
      }
    }
  }
}
