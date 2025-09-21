- [terraform-provider-cloudinit](https://github.com/hashicorp/terraform-provider-cloudinit) & docs [cloudInit Provider](https://registry.terraform.io/providers/hashicorp/cloudinit/latest/docs)
- From time to time the following bug appears:
``` shell
│ Error: 400-InvalidParameter, user_data must be base64 encoded
│ Suggestion: Please update the parameter(s) in the Terraform config as per error message user_data must be base64 encoded
│ Documentation: https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_instance
│ API Reference: https://docs.oracle.com/iaas/api/#/en/iaas/20160918/Instance/LaunchInstance
│ Request Target: POST https://iaas.eu-frankfurt-1.oraclecloud.com/20160918/instances
│ Provider version: 7.16.0, released on 2025-08-27. This provider is 3 Update(s) behind to current.
│ Service: Core Instance
│ Operation Name: LaunchInstance
│ OPC request ID: e59a8ec2749a964768e7c6d0efeb0afd/2E320091F56C0190BEE1CF6846524144/B0EBD9F1968A84DEB059021C598CC213
│   with module.vm["bastion"].oci_core_instance.this,
│   on .terraform/modules/vm/instance/main.tf line 44, in resource "oci_core_instance" "this":
│   44: resource "oci_core_instance" "this" {
```
- the fix was (this time) to delete/comment `gzip = false` & `base64_encode = true` from `data.cloudinit_config` and remove base64encode from `userdata` call: `user_data = join("", [for k, v in var.cloud_init : data.cloudinit_config.this[k].rendered])`
