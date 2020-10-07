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
| enabled | Define state of CloudWatch Event Target | `bool` | `true` | no |
| rule | Rule to be used within the CloudWatch Target | `string` | n/a | yes |
| target\_id | The unique target assignment ID. If missing, will generate a random, unique id. | `string` | `null` | no |

## Outputs

No output.
