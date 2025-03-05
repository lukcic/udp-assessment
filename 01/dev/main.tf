variable "SUBSCRIPTION_ID" {
  type    = string
  default = null
}

module "bootstrap" {
  source = "../../modules/bootstrap"

  project_name    = "udp-assessment"
  subject_area    = "01"
  environment     = basename(abspath(path.cwd)) # "dev"
  location        = "West Europe"
  subscription_id = var.SUBSCRIPTION_ID
}
