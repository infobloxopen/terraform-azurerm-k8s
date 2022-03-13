output "kubeconfig_path" {
  value = local_file.kubeconfig.filename
}

output "latest_k8s_version" {
  value = data.azurerm_kubernetes_service_versions.current.latest_version
}

output "public_ip_address" {
  value = azurerm_public_ip.public_ip.ip_address
}

output "public_ip_fqdn" {
  value = azurerm_public_ip.public_ip.fqdn
}

output "provider_info" {
  value = {
    provider = "azure"
    region = var.aks_region
    vpc_id = "unknown"
    subnet_ids = []
    security_group_ids = []
  }
}