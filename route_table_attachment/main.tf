resource "oci_core_route_table_attachment" "this" {
  subnet_id      = var.subnet_id
  route_table_id = var.route_table_id
}
