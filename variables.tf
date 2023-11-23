variable "AWS_ACCESS_KEY_ID" {
  description = "AWS Access Key"
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS Secret Key"
}

variable "AWS_SESSION_TOKEN" {
  type        = string
  default     = null
  description = "AWS Session Token"
}

variable "AWS_REGION" {
  description = "AWS Region"
}

variable "load_balancer_name" {
  type        = string
  description = "Load balancer name (must be unique)"
}

variable "load_balancer_type" {
  type        = string
  default     = "application"
  description = "Load balancer type"
}

variable "is_internal" {
  type        = bool
  default     = false
  description = "Is load balancer internal-facing?"
}

variable "security_group_ids" {
  type        = list(string)
  description = "Load balancer security group IDs"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Load balancer subnet IDs"
}

variable "load_balancer_tags" {
  type        = map(string)
  description = "Load balancer tags"
}
