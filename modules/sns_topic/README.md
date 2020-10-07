## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| template | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| display\_name | Name shown in confirmation emails | `string` | `"tf_sns_email"` | no |
| email\_address | Email address to send notifications to | `string` | n/a | yes |
| enabled | Define state of CloudWatch Event Rule | `bool` | `true` | no |
| protocol | SNS Protocol to use. email or email-json | `string` | `"email"` | no |
| stack\_name | Cloudformation stack name that wraps the SNS topic. Must be unique. | `string` | `"tf-sns-email"` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | Email SNS topic ARN |
