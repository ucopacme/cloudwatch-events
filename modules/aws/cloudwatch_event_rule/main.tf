resource "aws_cloudwatch_event_rule" "this" {
  name          = var.name
  description   = var.description
  is_enabled    = var.enabled
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
      "CreateUser",
      "AddUserToGroup"
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

