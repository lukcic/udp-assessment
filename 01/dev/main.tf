variable "subscription_id" {
  type    = string
  default = null
}

module "bootstrap" {
  source = "../../modules/bootstrap"

  project_name    = "udp-assessment"
  subject_area    = "01"
  environment     = basename(abspath(path.cwd)) # "dev"
  location        = "West Europe"
  subscription_id = var.subscription_id
}
