Terraform Module for creating Cloud Firewall resources on Alibaba Cloud.

terraform-alicloud-cloud-firewall
=====================================================================

[English](README.md) | 简体中文

本 Module 用于管理云防火墙，包括实例管理和访问控制

本 Module 支持创建以下资源:

* [alicloud_cloud_firewall_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cloud_firewall_instance)
* [alicloud_cloud_firewall_control_policy](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cloud_firewall_control_policy)

## 用法

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

## 注意事项

* 本 Module 使用的 AccessKey 和 SecretKey 可以直接从 `profile` 和 `shared_credentials_file`
  中获取。如果未设置，可通过下载安装 [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) 后进行配置。

## 要求

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.139.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.139.0 |

## 提交问题

如果在使用该 Terraform Module
的过程中有任何问题，可以直接创建一个 [Provider Issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new)，我们将根据问题描述提供解决方案。

**注意:** 不建议在该 Module 仓库中直接提交 Issue。

## 作者

Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

## 许可

MIT Licensed. See LICENSE for full details.

## 参考

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)