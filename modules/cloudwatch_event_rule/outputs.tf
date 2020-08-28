output "cloudwatch_event_rule_id" {
  value = aws_cloudwatch_event_rule.this.*.id
}

output "name" {
  value = aws_cloudwatch_event_rule.this.*.name
}
