variable "arn" {
  description = "arn to be used within CloudWatch Event"
  type        = string
}

variable "enabled" {
  description = "Define state of CloudWatch Event Rule"
  default     = true
  type        = bool
}

variable "policy" {
  description = "policy Topic for SNS"
  type        = string
}
