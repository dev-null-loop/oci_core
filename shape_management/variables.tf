variable "compartment_id" {
  description = "(Required) The OCID of the compartment containing the image."
  type        = string
}

variable "image_id" {
  description = "(Required) The OCID of the Image to which the shape should be added."
  type        = string
}

variable "shape_name" {
  description = "(Required) The compatible shape that is to be added to the compatible shapes list for the image."
  type        = string
}
