provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  region       = var.region_requestor
  alias        = "requestor"
}

provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  region       = var.region_acceptor
  alias        = "acceptor"
}
