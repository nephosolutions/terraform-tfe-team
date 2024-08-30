# Terraform Cloud Team Membership

This module configures Terraform Cloud team memberships.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
Copyright 2019-2024 NephoSolutions srl, Sebastian Trebitz

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >= 0.41 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.58.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_team_organization_members.team_membership](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_organization_members) | resource |
| [tfe_organization_membership.user](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization_membership) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_members"></a> [members](#input\_members) | Set of team members. | `set(string)` | `[]` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Name of the Terraform Cloud organization. | `string` | `null` | no |
| <a name="input_team_id"></a> [team\_id](#input\_team\_id) | ID of the team. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_membership_ids"></a> [membership\_ids](#output\_membership\_ids) | IDs of team memberships. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
