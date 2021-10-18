# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED VARIABLES
# These variables must be set when using this module.
# ---------------------------------------------------------------------------------------------------------------------

variable "project" {
  description = "(Required) The project ID."
  type        = string
}

variable "role" {
  description = "(Required) The role that should be applied. Only one google_project_iam_binding can be used per role. Note that custom roles must be of the format organizations/{{org_id}}/roles/{{role_id}}."
  type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL VARIABLES
# These variables have defaults, but may be overridden.
# ---------------------------------------------------------------------------------------------------------------------

variable "members" {
  description = "(Optional) Identities that will be granted the privilege in role. Policy members must be of the form '<type>:<value>'. Ex. 'user:user1@google.com'."
  type        = set(string)
  default     = []
}

variable "authoritative" {
  description = "(Optional) Whether to exclusively set (authoritative mode) or add (non-authoritative/additive mode) members to the role."
  type        = bool
  default     = false
}

variable "condition" {
  description = "(Optional) An IAM Condition for a given binding."
  type        = any
  default     = null
}

variable "policy_bindings" {
  description = "(Optional) A list of IAM policy bindings."
  type        = any
  default     = null
}

# ------------------------------------------------------------------------------
# MODULE CONFIGURATION PARAMETERS
# These variables are used to configure the module.
# ------------------------------------------------------------------------------

variable "module_enabled" {
  type        = bool
  description = "(Optional) Whether to create resources within the module or not. Default is 'true'."
  default     = true
}

variable "module_depends_on" {
  type        = any
  description = "(Optional) A list of external resources the module depends_on. Default is '[]'."
  default     = []
}
