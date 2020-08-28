resource "aws_cloudwatch_event_target" this {
  arn       = var.arn
  count     = var.enabled ? 1 : 0
  rule      = var.rule
  target_id = var.target_id
}
