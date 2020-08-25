variable "snsarn" {
  description = "arn to be used within CloudWatch Event"
  type        = string
}
variable "policy" {
  description = "policy Topic for SNS"
  type        = string
}
