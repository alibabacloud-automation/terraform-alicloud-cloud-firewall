Terraform Module for creating Cloud Firewall resources on Alibaba Cloud.

terraform-alicloud-cloud-firewall
=====================================================================


English | [简体中文](README-CN.md)

Terraform module which creating Cloud Firewall instance and access control on Alibaba Cloud

These types of resources are supported:

* [alicloud_cloud_firewall_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cloud_firewall_instance)
* [alicloud_cloud_firewall_control_policy](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cloud_firewall_control_policy)

## Usage

<div style="display: block;margin-bottom: 40px;"><div class="oics-button" style="float: right;position: absolute;margin-bottom: 10px;">
  <a href="https://api.aliyun.com/terraform?source=Module&activeTab=document&sourcePath=terraform-alicloud-modules%3A%3Acloud-firewall&spm=docs.m.terraform-alicloud-modules.cloud-firewall&intl_lang=EN_US" target="_blank">
    <img alt="Open in AliCloud" src="https://img.alicdn.com/imgextra/i1/O1CN01hjjqXv1uYUlY56FyX_!!6000000006049-55-tps-254-36.svg" style="max-height: 44px; max-width: 100%;">
  </a>
</div></div>

```hcl
module "example" {
  source = "terraform-alicloud-modules/terraform-alicloud-cloud-firewall/alicloud"
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
```

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.139.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.139.0 |

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend opening an issue on this repo.

## Authors

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)