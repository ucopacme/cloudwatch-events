## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| arn | arn to be used within CloudWatch Event | `string` | n/a | yes |
| enabled | Define state of CloudWatch Event Rule | `bool` | `true` | no |
| policy | policy Topic for SNS | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | n/a |
