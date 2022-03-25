module "example" {
  source = "../.."
  create_cloud_firewall_instance = false
  create_cloud_firewall_policies = true
  policies = [
    {
      application_name = "ANY"
      acl_action       = "accept"
      description      = "policy_test_1"
      destination_type = "net"
      destination      = "192.1.1.0/24"
      direction        = "out"
      proto            = "ANY"
      source           = "114.2.3.0/24"
      source_type      = "net"
    },
    {
      application_name = "HTTP"
      acl_action       = "drop"
      description      = "policy_test_2"
      destination_type = "net"
      dest_port_type   = "port"
      dest_port        = "22/22"
      destination      = "100.1.1.0/24"
      direction        = "in"
      proto            = "TCP"
      source           = "[\"BJ11\"]"
      source_type      = "location"
    }
  ]
}