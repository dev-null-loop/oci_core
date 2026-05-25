output "id" {
  description = "The OCID of the volume attachment."
  value       = oci_core_volume_attachment.this.id
}

output "attachment_type" {
  description = "The type of volume attachment."
  value       = oci_core_volume_attachment.this.attachment_type
}

output "availability_domain" {
  description = "The availability domain of an instance.  Example: `Uocm:PHX-AD-1`"
  value       = oci_core_volume_attachment.this.availability_domain
}

output "chap_secret" {
  description = "The Challenge-Handshake-Authentication-Protocol (CHAP) secret valid for the associated CHAP user name. (Also called the \"CHAP password\".)"
  value       = oci_core_volume_attachment.this.chap_secret
  sensitive   = true
}

output "chap_username" {
  description = "The volume's system-generated Challenge-Handshake-Authentication-Protocol (CHAP) user name."
  value       = oci_core_volume_attachment.this.chap_username
}

output "device" {
  description = "The device name."
  value       = oci_core_volume_attachment.this.device
}

output "display_name" {
  description = "A user-friendly name. Does not have to be unique, and it's changeable. Avoid entering confidential information."
  value       = oci_core_volume_attachment.this.display_name
}

output "encryption_in_transit_type" {
  description = "Refer the top-level definition of encryptionInTransitType. The default value is NONE."
  value       = oci_core_volume_attachment.this.encryption_in_transit_type
}

output "instance_id" {
  description = "The OCID of the instance the volume is attached to."
  value       = oci_core_volume_attachment.this.instance_id
}

output "ipv4" {
  description = "The volume's iSCSI IP address.  Example: `169.254.0.2`"
  value       = oci_core_volume_attachment.this.ipv4
}

output "ipv6" {
  description = "The volume's iSCSI IPv6 address.  Example: `2001:db8::1/64`"
  value       = oci_core_volume_attachment.this.ipv6
}

output "iqn" {
  description = "The target volume's iSCSI Qualified Name in the format defined by [RFC 3720](https://tools.ietf.org/html/rfc3720#page-32)."
  value       = oci_core_volume_attachment.this.iqn
}

output "is_agent_auto_iscsi_login_enabled" {
  description = "Whether Oracle Cloud Agent is enabled perform the iSCSI login and logout commands after the volume attach or detach operations for non multipath-enabled iSCSI attachments."
  value       = oci_core_volume_attachment.this.is_agent_auto_iscsi_login_enabled
}

output "is_multipath" {
  description = "Whether the Iscsi or Paravirtualized attachment is multipath or not, it is not applicable to NVMe attachment."
  value       = oci_core_volume_attachment.this.is_multipath
}

output "is_pv_encryption_in_transit_enabled" {
  description = "Whether in-transit encryption for the data volume's paravirtualized attachment is enabled or not."
  value       = oci_core_volume_attachment.this.is_pv_encryption_in_transit_enabled
}

output "is_read_only" {
  description = "Whether the attachment was created in read-only mode."
  value       = oci_core_volume_attachment.this.is_read_only
}

output "iscsi_login_state" {
  description = "The iscsi login state of the volume attachment."
  value       = oci_core_volume_attachment.this.iscsi_login_state
}

output "multipath_devices" {
  description = "A list of secondary multipath devices."
  value       = oci_core_volume_attachment.this.multipath_devices
}

output "port" {
  description = "The volume's iSCSI port, usually port 860 or 3260.  Example: `3260`"
  value       = oci_core_volume_attachment.this.port
}

output "state" {
  description = "The current state of the volume attachment."
  value       = oci_core_volume_attachment.this.state
}

output "time_created" {
  description = "The date and time the volume was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).  Example: `2016-08-25T21:10:29.600Z`"
  value       = oci_core_volume_attachment.this.time_created
}

output "volume_id" {
  description = "The OCID of the volume."
  value       = oci_core_volume_attachment.this.volume_id
}
