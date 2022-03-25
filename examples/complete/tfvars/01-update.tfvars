# alicloud_cloud_firewall_control_policy
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
  ]