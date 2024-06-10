terraform {
  backend "s3" {
    bucket                      = "tfstates"
    region                      = "eu-frankfurt-1"
    key                         = "vcn/terraform.tfstate"
    endpoints                   = { s3 = "https://frvkqml7frsy.compat.objectstorage.eu-frankfurt-1.oraclecloud.com" }
    shared_credentials_files    = ["/home/bd/.oci/credentials"]
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    use_path_style              = true
  }

  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 5.40.0"
    }
  }
  required_version = ">= 1.5.7"
}
