resource "oci_core_vnic_attachment" "this" {
  for_each     = var.vnic_params
  instance_id  = module.core_instance.instance_ids[each.value.instance_name]
  display_name = each.value.display_name

  create_vnic_details {
    display_name = each.value.display_name
    private_ip   = each.value.private_ip
    subnet_id    = module.network.subnet_ids[each.value.subnet_name]
  }

  depends_on = [
    module.core_instance
  ]
}
