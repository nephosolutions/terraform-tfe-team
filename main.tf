/**
 * Copyright 2019-2024 NephoSolutions srl, Sebastian Trebitz
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

resource "tfe_team" "team" {
  organization = var.organization
  name         = var.name

  organization_access {
    manage_modules          = var.organization_access.manage_modules
    manage_policies         = var.organization_access.manage_policies
    manage_policy_overrides = var.organization_access.manage_policy_overrides
    manage_projects         = var.organization_access.manage_projects
    manage_providers        = var.organization_access.manage_providers
    manage_run_tasks        = var.organization_access.manage_run_tasks
    manage_vcs_settings     = var.organization_access.manage_vcs_settings
    manage_workspaces       = var.organization_access.manage_workspaces
    read_projects           = var.organization_access.read_projects
    read_workspaces         = var.organization_access.read_workspaces
  }
}

data "tfe_organization_membership" "user" {
  for_each = var.members

  organization = var.organization
  email        = each.key
}

resource "tfe_team_organization_members" "team_membership" {
  for_each = data.tfe_organization_membership.user

  team_id                     = tfe_team.team.id
  organization_membership_ids = [for k, v in data.tfe_organization_membership.user : v.id]
}
