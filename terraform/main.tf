resource "azurerm_resource_group2" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group2.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "k8s"

  default_node_pool {
    name       = "agentpool"
    node_count = var.node_count
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}
