output "id" {
  description = "The image's Oracle ID (OCID)."
  value       = oci_core_shape_management.this.id
}

output "image_id" {
  description = "The OCID of the image containing the shape."
  value       = oci_core_shape_management.this.image_id
}

output "shape_name" {
  description = "The compatible Shape for the image."
  value       = oci_core_shape_management.this.shape_name
}
