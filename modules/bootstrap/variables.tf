variable "project_name" {
  type        = string
  description = "Name of the project"
}

variable "subject_area" {
  type        = string
  description = "Name of subject area"
}

variable "environment" {
  type        = string
  description = "Name of environment"
}

variable "location" {
  type        = string
  description = "Location of the resources"
}

variable "subscription_id" {
  type        = string
  description = "ID of subscription used"
  default     = null
}
