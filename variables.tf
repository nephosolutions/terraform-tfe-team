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

variable "members" {
  description = ""
  type        = set(string)
  nullable    = false
  default     = []
}

variable "name" {
  description = "Name of the workspace."
  type        = string
  nullable    = false
}

variable "organization" {
  description = "Name of the Terraform Cloud organization."
  type        = string
  default     = null
}

variable "organization_access" {
  description = ""
  nullable    = false

  type = object({
    manage_modules          = optional(bool, false)
    manage_policies         = optional(bool, false)
    manage_policy_overrides = optional(bool, false)
    manage_projects         = optional(bool, false)
    manage_providers        = optional(bool, false)
    manage_run_tasks        = optional(bool, false)
    manage_vcs_settings     = optional(bool, false)
    manage_workspaces       = optional(bool, false)
    read_projects           = optional(bool, false)
    read_workspaces         = optional(bool, false)
  })

  default = {
    manage_modules          = false
    manage_policies         = false
    manage_policy_overrides = false
    manage_projects         = false
    manage_providers        = false
    manage_run_tasks        = false
    manage_vcs_settings     = false
    manage_workspaces       = false
    read_projects           = false
    read_workspaces         = false
  }
}
