module "acr" {
  source = "git::https://deepakkushwaha78:${var.GIT_TOKEN}@github.com/deepakkushwaha78/azure-pvt-acr-module.git//terraform-azure-acr?ref=main"

  acr_name                      = local.acr_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  sku                           = var.sku
  admin_enabled                 = var.admin_enabled
  public_network_access_enabled = var.public_network_access_enabled
  tags                          = var.tags
  georeplications               = var.georeplications
}
