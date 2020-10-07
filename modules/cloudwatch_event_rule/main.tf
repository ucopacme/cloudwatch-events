resource "aws_cloudwatch_event_rule" "this" {
  name          = var.name
  count         = var.enabled ? 1 : 0
  description   = var.description
  event_pattern = <<PATTERN
{
  "detail-type": [
    "AWS API Call via CloudTrail"
  ],
  "detail": {
    "eventSource": [
      "iam.amazonaws.com"
    ],
    "eventName": [
      "CreateUser"
   ]
  }
}
PATTERN

  tags = {
    Name               = "CloudWatchEventRuleForLocalUsers"
    "ucop:application" = "CloudWatchEvents"
    "ucop:environment" = "production"
    "ucop:service"     = "CloudHosting"
    "ucop:createdBy"   = "David Rivera"
  }
}

