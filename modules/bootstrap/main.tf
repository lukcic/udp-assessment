data "azuread_client_config" "current" {}

locals {
  az_ad_groups_to_roles = {
    "Project Admin" : "Owner",
    "Ops" : "Contributor",
    "Developer" : "Reader"
  }
}

resource "azurerm_resource_group" "empty_rg" {
  name     = "${var.project_name}_${var.subject_area}_${var.environment}"
  location = var.location

  tags = {
    environment  = var.environment
    subject_area = var.subject_area
  }
}

resource "azuread_group" "ad_group" {
  for_each = local.az_ad_groups_to_roles

  display_name     = each.key
  security_enabled = true
  owners           = [data.azuread_client_config.current.object_id]
}

resource "azurerm_role_assignment" "role_assign" {
  for_each = local.az_ad_groups_to_roles

  scope                = azurerm_resource_group.empty_rg.id
  principal_id         = azuread_group.ad_group[each.key].object_id
  role_definition_name = each.value
}
