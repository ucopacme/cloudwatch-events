## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | Description of CloudWatch Event Rule | `string` | `"local iam users"` | no |
| email | Email address to send notifications to | `string` | n/a | yes |
| enabled | Define state of CloudWatch Event Rule | `bool` | `true` | no |
| name | Name of CloudWatch Event Rule | `string` | `"local iam users"` | no |
| region | aws region | `string` | `"us-east-1"` | no |

## Outputs

No output.
