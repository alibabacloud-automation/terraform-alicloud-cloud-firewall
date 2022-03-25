#################
# Cloud Firewall Instance
#################
variable "create_cloud_firewall_instance" {
  description = "Whether to create a new cloud firewall instance."
  type        = bool
  default     = false
}

variable "spec" {
  description = "The spec of the cloud firewall instance."
  type        = string
  default     = null
}

variable "period" {
  description = "The prepaid period of the cloud firewall instance."
  type        = number
  default     = null
}

variable "cfw_service" {
  description = "Whether to use expert service."
  type        = bool
  default     = false
}

variable "cfw_log_storage" {
  description = "The log storage capacity of the cloud firewall instance."
  type        = number
  default     = null
}

variable "cfw_log" {
  description = "Whether to use log audit."
  type        = bool
  default     = null
}

variable "band_width" {
  description = "The Public network processing capability."
  type        = number
  default     = null
}

variable "ip_number" {
  description = "The number of public IPs that can be protected."
  type        = number
  default     = null
}


#################
# Cloud Firewall Control Policy
#################
variable "create_cloud_firewall_policies" {
  description = "Whether to create a new cloud firewall control policies."
  type        = bool
  default     = false
}

variable "policies" {
  description = "The list of the acl policy. See details: https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/cloud_firewall_control_policy"
  default     = []
  type        = list(map(string))
}

