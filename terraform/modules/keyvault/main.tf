
resource "azurerm_key_vault" "main" {
  name                       = "aks-keyvault-20251108"
  location                   = "East US"
  resource_group_name        = var.resource_group_name
  tenant_id                  = var.tenant_id
  sku_name                   = "standard"
  purge_protection_enabled   = false
  rbac_authorization_enabled = true  # Using RBAC for access control (renamed property)
}

