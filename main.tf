module "aws_caller_identity" {
  source = "./modules/caller_identity/"
}

module "sns_topic" {
  display_name  = "Local IAM User Alert"
  email_address = "david.rivera@ucop.edu"
  enabled       = var.enabled
  stack_name    = "tf-SnsTopic"
  source        = "./modules/sns_topic/"
}


module "iam_policy_document" {
  accountid = module.aws_caller_identity.caller_identity_out
  policyid  = "__default_policy_ID"
  snsarn    = module.sns_topic.arn
  source    = "./modules/iam_policy_document/"
}
module "sns_topic_policy" {
  arn     = module.sns_topic.arn
  enabled = var.enabled
  policy  = module.iam_policy_document.iam_policy_document_out.json
  source  = "./modules/sns_topic_policy/"
}

module "cloudwatch_event_rule" {
  description = "This CloudWatch Event Rule will detect the creation of new Local Users and alert via SNS Topic to the EmailAddresses on file."
  enabled     = var.enabled
  name        = "Detect-Local-User-Creations"
  source      = "./modules/cloudwatch_event_rule/"
}

module "cloudwatch_event_target" {
  arn       = module.sns_topic.arn
  enabled   = var.enabled
  rule      = "Detect-Local-User-Creations"
  source    = "./modules/cloudwatch_event_target/"
  target_id = "UnAuthorizedLocalUsers"
}
