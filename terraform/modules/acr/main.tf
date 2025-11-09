resource "azurerm_container_registry" "main" {
  name                = "aksacrregistry20251108"
  resource_group_name = var.resource_group_name
  location            = "East US"
  sku                 = "Basic"
  admin_enabled       = true
}
