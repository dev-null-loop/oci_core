schema_data = {
  ("Compute.AMD_SecureEncryptedVirtualization") = jsonencode(
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
}
