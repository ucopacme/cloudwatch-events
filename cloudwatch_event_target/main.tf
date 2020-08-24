resource "aws_cloudwatch_event_target" this {
  rule      = var.myrule
  target_id = var.mytargetid
  arn       = var.myarn
}
