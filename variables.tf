variable "cluster_policies" {
  description = <<EOT
Map of cluster_policies, attributes below
Optional:
    - definition
    - description
    - max_clusters_per_user
    - name
    - policy_family_definition_overrides
    - policy_family_id
    - libraries (block):
        - cran (optional, block):
            - package (required)
            - repo (optional)
        - egg (optional)
        - jar (optional)
        - maven (optional, block):
            - coordinates (required)
            - exclusions (optional)
            - repo (optional)
        - provider_config (optional, block):
            - workspace_id (optional)
        - pypi (optional, block):
            - package (required)
            - repo (optional)
        - requirements (optional)
        - whl (optional)
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    definition                         = optional(string)
    description                        = optional(string)
    max_clusters_per_user              = optional(number)
    name                               = optional(string)
    policy_family_definition_overrides = optional(string)
    policy_family_id                   = optional(string)
    libraries = optional(list(object({
      cran = optional(object({
        package = string
        repo    = optional(string)
      }))
      egg = optional(string)
      jar = optional(string)
      maven = optional(object({
        coordinates = string
        exclusions  = optional(list(string))
        repo        = optional(string)
      }))
      provider_config = optional(object({
        workspace_id = optional(string)
      }))
      pypi = optional(object({
        package = string
        repo    = optional(string)
      }))
      requirements = optional(string)
      whl          = optional(string)
    })))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

