variable "resource_group_name" {
  description = "Nome do grupo de recursos"
  type        = string
}

variable "location" {
  description = "Região do Azure onde o cluster será provisionado"
  type        = string
}

variable "aks_cluster_name" {
  description = "Nome do cluster AKS"
  type        = string
}

variable "node_count" {
  description = "Número de nós no cluster"
  type        = number
  default     = 3
}
