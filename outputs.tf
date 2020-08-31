output "caller_identity_out" {
  value = module.aws_caller_identity.caller_identity_out
}

output "cloudwatch_event_rule_id" {
  value = module.cloudwatch_event_rule.cloudwatch_event_rule_id
}

output "iam_policy_document_out" {
  value = module.iam_policy_document.iam_policy_document_out
}
