- [terraform-provider-cloudinit](https://github.com/hashicorp/terraform-provider-cloudinit) & docs [cloudInit Provider](https://registry.terraform.io/providers/hashicorp/cloudinit/latest/docs)
- Randomly the following bug appears:
``` shell
Error: 400-InvalidParameter, user_data must be base64 encoded
Suggestion: Please update the parameter(s) in the Terraform config as per error message user_data must be base64 encoded
Documentation: https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/core_instance
API Reference: https://docs.oracle.com/iaas/api/#/en/iaas/20160918/Instance/LaunchInstance
Request Target: POST https://iaas.eu-frankfurt-1.oraclecloud.com/20160918/instances
Provider version: 7.16.0, released on 2025-08-27. This provider is 3 Update(s) behind to current.
Service: Core Instance
Operation Name: LaunchInstance
OPC request ID: e59a8ec2749a964768e7c6d0efeb0afd/2E320091F56C0190BEE1CF6846524144/B0EBD9F1968A84DEB059021C598CC213
  with module.vm["bastion"].oci_core_instance.this,
  on .terraform/modules/vm/instance/main.tf line 44, in resource "oci_core_instance" "this":
  44: resource "oci_core_instance" "this" {
```
- the fix was (this time) to delete/comment `gzip = false` & `base64_encode = true` from `data.cloudinit_config` and remove base64encode from `userdata` call: `user_data = join("", [for k, v in var.cloud_init : data.cloudinit_config.this[k].rendered])`

- Issue:

``` shell
│ Error: Invalid for_each argument
│   on .terraform/modules/vm/instance/main.tf line 22, in data "cloudinit_config" "this":
│   22:   for_each = var.cloud_init
│     ├────────────────
│     │ var.cloud_init is a map of object, known only after apply
│ The "for_each" map includes keys derived from resource attributes that cannot be determined until apply, and so Terraform cannot determine the full set of keys that will identify the instances of this resource.
│ When working with unknown values in for_each, it's better to define the map keys statically in your configuration and place apply-time results only in the map values.
│ Alternatively, you could use the -target planning option to first apply only the resources that the for_each value depends on, and then apply a second time to fully converge.
```
Because of :

``` shell
  cloud_init = try({
	for k, v in each.value.cloud_init :
	(k) => {
	  filename     = v.filename
	  content_type = v.content_type
	  content      = try(module.kubeconfig[each.value.managed_cluster].kubeconfig_instance_principal, null)
	  vars = {
	filename  = try(v.vars.filename, null)
	subnet_id = try(module.clusters[each.value.managed_cluster].service_lb_subnet_ids[0], null)
	  }
	}
  }, {})
```

- `Error: 400-InvalidParameter, Shape VM.Standard.A1.Flex is not valid for image ocid1.image.oc1.eu-frankfurt-1.aaaaaaaanri6q2ifldmautmdge26ruuqxkuvq7yctv24cwktotpg7tknur2q.`
- `Error: 400-InvalidParameter, Invalid ratio of memory in GB to OCPUs. Current ratio: 0.5. Valid ratio range: 1 - 64`
