variable "arn" {
  description = "arn to be used within CloudWatch Event"
  type        = string
}

variable "enabled" {
  description = "Define state of CloudWatch Event Target"
  default     = true
  type        = bool
}

variable "rule" {
  description = "Rule to be used within the CloudWatch Target"
  type        = string
}

variable "target_id" {
  default     = null
  description = "The unique target assignment ID. If missing, will generate a random, unique id."
  type        = string
}
