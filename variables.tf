
variable "cloudfront_config_dir" {
  description = "Directory relative to `cloudfront_distributions.tf` containing config yaml for cloudfront distributions"
  default     = "config/"
}

variable "env" {
  description = "Name of the environment, eg prod"
  type        = string
}

variable "prefix" {
  description = "A lowercase word to prepend to names of created resources"
  type        = string
  default     = ""
}

variable "realm" {
  description = "Maps to our organization on TFC: womply, cde"
  type        = string
  default     = "womply"
}

variable "region" {
  description = "AWS Region"
  type        = string
  default     = "us-west-2"
}


variable "tfc_workspaces" {
  description = "The Terraform Cloud workspaces that this one has as dependencies"
  type        = map(string)
  default = {
    clusters = ""
    network  = ""
  }
}

variable "private_infrastructure" {
  description = "Whether all created infrastructure should only be available when using VPN"
  type        = bool
  default     = true
}
