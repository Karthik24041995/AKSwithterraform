
module "resource_group" {
  source = "./modules/resource_group"
}

module "network" {
  source              = "./modules/network"
  resource_group_name = module.resource_group.resource_group_name
}

module "aks" {
  source              = "./modules/aks"
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.network.subnet_id
}

module "acr" {
  source              = "./modules/acr"
  resource_group_name = module.resource_group.resource_group_name
}

module "keyvault" {
  source              = "./modules/keyvault"
  resource_group_name = module.resource_group.resource_group_name
  tenant_id          = "16b3c013-d300-468d-ac64-7eda0820b6d3"  # Your tenant ID from the Azure AD
}
