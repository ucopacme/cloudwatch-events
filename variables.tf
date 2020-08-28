variable "name" {
  default     = "local iam users"
  description = "Name of CloudWatch Event Rule"
  type        = string
}

variable "description" {
  default     = "local iam users"
  description = "Description of CloudWatch Event Rule"
  type        = string
}

variable "enabled" {
  description = "Define state of CloudWatch Event Rule"
  default     = true
  type        = bool
}

variable "region" {
  default     = "us-east-1"
  description = "aws region"
  type        = string
}
