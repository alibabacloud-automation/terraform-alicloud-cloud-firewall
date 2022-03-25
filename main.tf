resource "alicloud_cloud_firewall_instance" "instance" {
  count           = var.create_cloud_firewall_instance ? 1 : 0
  payment_type    = "Subscription"
  spec            = var.spec
  ip_number       = var.ip_number
  band_width      = var.band_width
  cfw_log         = var.cfw_log
  cfw_log_storage = var.cfw_log_storage
  cfw_service     = var.cfw_service
  period          = var.period
}

resource "alicloud_cloud_firewall_control_policy" "policies" {
  count            = var.create_cloud_firewall_policies ? length(var.policies) : 0
  acl_action       = lookup(var.policies[count.index], "acl_action", null)
  application_name = lookup(var.policies[count.index], "application_name", null)
  description      = lookup(var.policies[count.index], "description", null)
  dest_port        = lookup(var.policies[count.index], "dest_port", null)
  dest_port_type   = lookup(var.policies[count.index], "dest_port_type", null)
  dest_port_group  = lookup(var.policies[count.index], "dest_port_group", null)
  destination      = lookup(var.policies[count.index], "destination", null)
  destination_type = lookup(var.policies[count.index], "destination_type", null)
  direction        = lookup(var.policies[count.index], "direction", null)
  ip_version       = lookup(var.policies[count.index], "ip_version", null)
  proto            = lookup(var.policies[count.index], "proto", null)
  release          = lookup(var.policies[count.index], "release", null)
  source           = lookup(var.policies[count.index], "source", null)
  source_ip        = lookup(var.policies[count.index], "source_ip", null)
  source_type      = lookup(var.policies[count.index], "source_type", null)
}