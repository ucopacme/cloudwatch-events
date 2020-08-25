variable "name" {
  description = "Name of CloudWatch Event Rule"
  type        = string
}

variable "description" {
  description = "Description of CloudWatch Event Rule"
  type        = string
}

variable "enabled" {
  description = "Define state of CloudWatch Event Rule"
  default     = true
  type        = string
}
