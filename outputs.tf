output "cloud_firewall_instance_id" {
  value = var.create_cloud_firewall_instance ? alicloud_cloud_firewall_instance.instance.0.id : ""
}