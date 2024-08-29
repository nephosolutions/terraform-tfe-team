# Terraform Cloud Team

This module provisions a Terraform Cloud team.

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
| [tfe_team.team](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team) | resource |
| [tfe_team_organization_members.team_membership](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_organization_members) | resource |
| [tfe_organization_membership.user](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization_membership) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_members"></a> [members](#input\_members) | n/a | `set(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the workspace. | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | Name of the Terraform Cloud organization. | `string` | `null` | no |
| <a name="input_organization_access"></a> [organization\_access](#input\_organization\_access) | n/a | <pre>object({<br>    manage_modules          = optional(bool, false)<br>    manage_policies         = optional(bool, false)<br>    manage_policy_overrides = optional(bool, false)<br>    manage_projects         = optional(bool, false)<br>    manage_providers        = optional(bool, false)<br>    manage_run_tasks        = optional(bool, false)<br>    manage_vcs_settings     = optional(bool, false)<br>    manage_workspaces       = optional(bool, false)<br>    read_projects           = optional(bool, false)<br>    read_workspaces         = optional(bool, false)<br>  })</pre> | <pre>{<br>  "manage_modules": false,<br>  "manage_policies": false,<br>  "manage_policy_overrides": false,<br>  "manage_projects": false,<br>  "manage_providers": false,<br>  "manage_run_tasks": false,<br>  "manage_vcs_settings": false,<br>  "manage_workspaces": false,<br>  "read_projects": false,<br>  "read_workspaces": false<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The team identifier. |
| <a name="output_name"></a> [name](#output\_name) | The team name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
