resource "databricks_cluster_policy" "cluster_policies" {
  for_each = var.cluster_policies

  definition                         = each.value.definition
  description                        = each.value.description
  max_clusters_per_user              = each.value.max_clusters_per_user
  name                               = each.value.name
  policy_family_definition_overrides = each.value.policy_family_definition_overrides
  policy_family_id                   = each.value.policy_family_id

  dynamic "libraries" {
    for_each = each.value.libraries != null ? each.value.libraries : []
    content {
      dynamic "cran" {
        for_each = libraries.value.cran != null ? [libraries.value.cran] : []
        content {
          package = cran.value.package
          repo    = cran.value.repo
        }
      }
      egg = libraries.value.egg
      jar = libraries.value.jar
      dynamic "maven" {
        for_each = libraries.value.maven != null ? [libraries.value.maven] : []
        content {
          coordinates = maven.value.coordinates
          exclusions  = maven.value.exclusions
          repo        = maven.value.repo
        }
      }
      dynamic "provider_config" {
        for_each = libraries.value.provider_config != null ? [libraries.value.provider_config] : []
        content {
          workspace_id = provider_config.value.workspace_id
        }
      }
      dynamic "pypi" {
        for_each = libraries.value.pypi != null ? [libraries.value.pypi] : []
        content {
          package = pypi.value.package
          repo    = pypi.value.repo
        }
      }
      requirements = libraries.value.requirements
      whl          = libraries.value.whl
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

