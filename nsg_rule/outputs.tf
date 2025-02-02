output "ids" {
  description = "network security group security rule id"
  value = { for k, v in oci_core_network_security_group_security_rule.this :
    k => v.id
  }
}
