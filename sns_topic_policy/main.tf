resource "aws_sns_topic_policy" "this" {
  arn    = var.snsarn
  policy = var.policy
}
