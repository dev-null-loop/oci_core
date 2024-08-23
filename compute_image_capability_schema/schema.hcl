# oci_core_compute_image_capability_schema.this:
resource "oci_core_compute_image_capability_schema" "this" {
  compartment_id                                      = "ocid1.compartment.oc1..aaaaaaaahaz26fqhyi3fezbueousr53okuox7iayrmqik4hatmq6o3i3f35q"
  compute_global_image_capability_schema_id           = "ocid1.computeglobalimgcapschema.oc1.eu-frankfurt-1.aaaaaaaayce6l3husjlggbpp223r25ezu4w45mo6mpnwldnh2klbtvq2fhmq"
  compute_global_image_capability_schema_version_name = "23cfd738-ad9c-4f56-9281-67be6c8cd14c"
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "default/bogdan.m.darie@oracle.com"
    "Oracle-Tags.CreatedOn" = "2024-08-22T15:00:55.935Z"
  }
  display_name  = "computeimgcapschema20240822150055"
  freeform_tags = {}
  id            = "ocid1.computeimgcapschema.oc1.eu-frankfurt-1.aaaaaaaautlcgonzpaceuybb5c5dmrrxhyvep2snqxxvcywq3d5emnlxkpca"
  image_id      = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaah5kt5f44avqdsh4g353snp73xuypw2vwilmtet65r2krj5utryra"
  schema_data = {
    "Compute.AMD_SecureEncryptedVirtualization" = jsonencode(
      {
	defaultValue   = true
	descriptorType = "boolean"
	source         = "IMAGE"
      }
    )
    "Compute.Firmware" = jsonencode(
      {
	defaultValue   = "UEFI_64"
	descriptorType = "enumstring"
	source         = "IMAGE"
	values = [
	  "BIOS",
	  "UEFI_64",
	]
      }
    )
    "Compute.LaunchMode" = jsonencode(
      {
	defaultValue   = "PARAVIRTUALIZED"
	descriptorType = "enumstring"
	source         = "IMAGE"
	values = [
	  "NATIVE",
	  "EMULATED",
	  "VDPA",
	  "PARAVIRTUALIZED",
	  "CUSTOM",
	]
      }
    )
    "Compute.SecureBoot" = jsonencode(
      {
	defaultValue   = true
	descriptorType = "boolean"
	source         = "IMAGE"
      }
    )
    "Network.AttachmentType" = jsonencode(
      {
	defaultValue   = "PARAVIRTUALIZED"
	descriptorType = "enumstring"
	source         = "IMAGE"
	values = [
	  "VFIO",
	  "PARAVIRTUALIZED",
	  "E1000",
	  "VDPA",
	]
      }
    )
    "Network.IPv6Only" = jsonencode(
      {
	defaultValue   = false
	descriptorType = "boolean"
	source         = "IMAGE"
      }
    )
    "Storage.BootVolumeType" = jsonencode(
      {
	defaultValue   = "PARAVIRTUALIZED"
	descriptorType = "enumstring"
	source         = "IMAGE"
	values = [
	  "ISCSI",
	  "PARAVIRTUALIZED",
	  "SCSI",
	  "IDE",
	  "NVME",
	]
      }
    )
    "Storage.ConsistentVolumeNaming" = jsonencode(
      {
	defaultValue   = true
	descriptorType = "boolean"
	source         = "IMAGE"
      }
    )
    "Storage.Iscsi.MultipathDeviceSupported" = jsonencode(
      {
	defaultValue   = false
	descriptorType = "boolean"
	source         = "IMAGE"
      }
    )
    "Storage.LocalDataVolumeType" = jsonencode(
      {
	defaultValue   = "PARAVIRTUALIZED"
	descriptorType = "enumstring"
	source         = "IMAGE"
	values = [
	  "ISCSI",
	  "PARAVIRTUALIZED",
	  "SCSI",
	  "IDE",
	  "NVME",
	]
      }
    )
    "Storage.ParaVirtualization.AttachmentVersion" = jsonencode(
      {
	defaultValue   = 2
	descriptorType = "enuminteger"
	source         = "IMAGE"
	values = [
	  1,
	  2,
	]
      }
    )
    "Storage.ParaVirtualization.EncryptionInTransit" = jsonencode(
      {
	defaultValue   = true
	descriptorType = "boolean"
	source         = "IMAGE"
      }
    )
    "Storage.RemoteDataVolumeType" = jsonencode(
      {
	defaultValue   = "PARAVIRTUALIZED"
	descriptorType = "enumstring"
	source         = "IMAGE"
	values = [
	  "ISCSI",
	  "PARAVIRTUALIZED",
	  "SCSI",
	  "IDE",
	  "NVME",
	]
      }
    )
  }
  time_created = "2024-08-22 15:00:55.958 +0000 UTC"
}
