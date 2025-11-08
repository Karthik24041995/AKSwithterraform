
terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstate370624"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_azuread_auth    = true
    subscription_id      = "9adde229-f7bd-48c4-9c15-13737b234917"
    tenant_id           = "16b3c013-d300-468d-ac64-7eda0820b6d3"
  }
}
