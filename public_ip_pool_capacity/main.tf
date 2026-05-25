resource "oci_core_public_ip_pool_capacity" "this" {
  public_ip_pool_id = var.public_ip_pool_id
  byoip_id          = var.byoip_id
  cidr_block        = var.cidr_block
}
