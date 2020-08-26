variable "name" {
  description = "Name of CloudWatch Event Rule"
  type        = string
}

variable "description" {
  description = "Description of CloudWatch Event Rule"
  type        = string
}

variable "enabled" {
  description = "to be or not to be"
  default     = true
  type        = bool
}
