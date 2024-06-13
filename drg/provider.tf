provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  region       = var.requestor_region
  alias        = "requestor"
}

provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  region       = var.acceptor_region
  alias        = "acceptor"
}
