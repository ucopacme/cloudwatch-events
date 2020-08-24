variable "myrule" {
  description = "Rule to be used within the CloudWatch Event"
  type        = string
}
variable "myarn" {
  description = "arn to be used within CloudWatch Event"
  type        = string
}
variable "mytargetid" {
  description = "The unique target assignment ID. If missing, will generate a random, unique id."
  type        = string
}
