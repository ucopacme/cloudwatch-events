output "arn" {
  value       = aws_cloudformation_stack.this.outputs["ARN"]
  description = "Email SNS topic ARN"
}
