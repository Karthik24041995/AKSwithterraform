
resource "azurerm_kubernetes_cluster" "main" {
  name                = "aks-cluster"
  location            = "South India"
  resource_group_name = var.resource_group_name
  dns_prefix          = "aksdns"

  default_node_pool {
    name       = "default"
    node_count = 2
  vm_size    = "Standard_B2s"
    vnet_subnet_id = var.subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin      = "kubenet"
    service_cidr        = "10.240.0.0/16"
    dns_service_ip      = "10.240.0.10"
  }

  tags = {
    Environment = "Dev"
  }
}
