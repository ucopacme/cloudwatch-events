variable "policyid" {
  description = "Name of CloudWatch Event Rule"
  type        = string
  default     = "__default_policy_ID"
}
variable "snsarn" {
  description = "arn to be used within CloudWatch Event"
  type        = string
}
variable "accountid" {
  description = " sts called identity"
  default     = "module.aws_caller_identity.caller_identity_out"
}

