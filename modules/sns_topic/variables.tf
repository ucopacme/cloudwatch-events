variable "display_name" {
  type        = string
  description = "Name shown in confirmation emails"
  default     = "tf_sns_email"
}

variable "email_address" {
  type        = string
  description = "Email address to send notifications to"
}

variable "enabled" {
  description = "Define state of CloudWatch Event Rule"
  default     = true
  type        = bool
}

variable "protocol" {
  default     = "email"
  description = "SNS Protocol to use. email or email-json"
  type        = string
}

variable "stack_name" {
  type        = string
  description = "Cloudformation stack name that wraps the SNS topic. Must be unique."
  default     = "tf-sns-email"
}

