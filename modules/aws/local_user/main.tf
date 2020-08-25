provider "aws" {
}

module "aws_caller_identity" {
  source = "../caller_identity/"
}

module "sns_topic" {
  display_name  = "CHS-DEV IAM Alert"
  email_address = "david.rivera@ucop.edu"
  source        = "github.com/asecurecloud/tf_sns_email"
  stack_name    = "tf-SnsTopic-chs-dev"
}

module "sns_topic_policy" {
  arn     = module.sns_topic.arn
  enabled = var.enabled
  policy  = module.iam_policy_document.iam_policy_document_out.json
  source  = "../sns_topic_policy/"
}

module "cloudwatch_event_rule" {
  description = "This CloudWatch Event Rule will detect the creation of new Local Users and alert via SNS Topic to the EmailAddresses on file."
  enabled     = var.enabled
  name        = "Detect-Local-User-Creations"
  source      = "../cloudwatch_event_rule/"
}

module "cloudwatch_event_target" {
  arn       = module.sns_topic.arn
  enabled   = var.enabled
  rule      = module.cloudwatch_event_rule[0].name
  source    = "../cloudwatch_event_target/"
  target_id = "UnAuthorizedLocalUsers"
}

module "iam_policy_document" {
  accountid = module.aws_caller_identity.caller_identity_out
  policyid  = "__default_policy_ID"
  snsarn    = module.sns_topic.arn
  source    = "../iam_policy_document/"
}
