resource "oci_core_instance_pool_instance" "this" {
  instance_id                       = var.instance_id
  instance_pool_id                  = var.instance_pool_id
  decrement_size_on_delete          = var.decrement_size_on_delete
  auto_terminate_instance_on_delete = var.auto_terminate_instance_on_delete
}
