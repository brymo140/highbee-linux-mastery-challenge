variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "eu-west-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "c7i-flex.large"
}

variable "key_name" {
  description = "Name of an existing AWS key pair to attach to the instance"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "Your IP address in CIDR form, restricting SSH access"
  type        = string
}

variable "app_port" {
  description = "Port the app listens on"
  type        = number
  default     = 5000
}

variable "duckdns_domain" {
  description = "Your DuckDNS subdomain, e.g. myapp (without .duckdns.org)"
  type        = string
}

variable "duckdns_token" {
  description = "Your DuckDNS account token"
  type        = string
  sensitive   = true
}
