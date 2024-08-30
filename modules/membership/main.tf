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

data "tfe_organization_membership" "user" {
  for_each = var.members

  organization = var.organization
  email        = each.key
}

resource "tfe_team_organization_members" "team_membership" {
  for_each = data.tfe_organization_membership.user

  team_id                     = var.team_id
  organization_membership_ids = [for k, v in data.tfe_organization_membership.user : v.id]
}
