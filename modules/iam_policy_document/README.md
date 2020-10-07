## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| accountid | sts called identity | `string` | `"module.aws_caller_identity.caller_identity_out"` | no |
| policyid | Name of CloudWatch Event Rule | `string` | `"__default_policy_ID"` | no |
| snsarn | arn to be used within CloudWatch Event | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| iam\_policy\_document\_out | n/a |
