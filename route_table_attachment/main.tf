resource "oci_core_route_table_attachment" "this" {
  subnet_id      = oci_core_subnet.test_subnet.id
  route_table_id = oci_core_route_table.test_route_table.id
}
