resource "aws_sns_topic_policy" "this" {
  arn    = var.arn
  count  = var.enabled ? 1 : 0
  policy = var.policy
}
