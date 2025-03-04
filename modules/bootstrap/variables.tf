variable "project_name" {
  type        = string
  description = "Name of the project"
}

variable "subject_area" {
  type        = string
  description = "Name of the subject area"
  validation {
    condition     = can(regex("^(01|02|03)$", var.subject_area))
    error_message = "Must be: 01/02/03"
  }
}

variable "environment" {
  type        = string
  description = "Name of environment"
  validation {
    condition     = can(regex("^(dev|qa|prod)$", var.environment))
    error_message = "Must be: dev/qa/prod"
  }
}

variable "location" {
  type        = string
  description = "Location of the resources"
  default     = "West Europe"
}

variable "subscription_id" {
  type        = string
  description = "ID of subscription used"
  default     = null
}
