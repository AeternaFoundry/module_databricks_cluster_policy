output "cluster_policies_id" {
  description = "Map of id values across all cluster_policies, keyed the same as var.cluster_policies except keys with no id are omitted"
  value       = { for k, v in databricks_cluster_policy.cluster_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cluster_policies_definition" {
  description = "Map of definition values across all cluster_policies, keyed the same as var.cluster_policies except keys with no definition are omitted"
  value       = { for k, v in databricks_cluster_policy.cluster_policies : k => v.definition if v.definition != null && length(v.definition) > 0 }
}
output "cluster_policies_description" {
  description = "Map of description values across all cluster_policies, keyed the same as var.cluster_policies except keys with no description are omitted"
  value       = { for k, v in databricks_cluster_policy.cluster_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cluster_policies_libraries" {
  description = "Map of libraries values across all cluster_policies, keyed the same as var.cluster_policies except keys with no libraries are omitted"
  value       = { for k, v in databricks_cluster_policy.cluster_policies : k => v.libraries if v.libraries != null && length(v.libraries) > 0 }
}
output "cluster_policies_max_clusters_per_user" {
  description = "Map of max_clusters_per_user values across all cluster_policies, keyed the same as var.cluster_policies except keys with no max_clusters_per_user are omitted"
  value       = { for k, v in databricks_cluster_policy.cluster_policies : k => v.max_clusters_per_user if v.max_clusters_per_user != null }
}
output "cluster_policies_name" {
  description = "Map of name values across all cluster_policies, keyed the same as var.cluster_policies except keys with no name are omitted"
  value       = { for k, v in databricks_cluster_policy.cluster_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cluster_policies_policy_family_definition_overrides" {
  description = "Map of policy_family_definition_overrides values across all cluster_policies, keyed the same as var.cluster_policies except keys with no policy_family_definition_overrides are omitted"
  value       = { for k, v in databricks_cluster_policy.cluster_policies : k => v.policy_family_definition_overrides if v.policy_family_definition_overrides != null && length(v.policy_family_definition_overrides) > 0 }
}
output "cluster_policies_policy_family_id" {
  description = "Map of policy_family_id values across all cluster_policies, keyed the same as var.cluster_policies except keys with no policy_family_id are omitted"
  value       = { for k, v in databricks_cluster_policy.cluster_policies : k => v.policy_family_id if v.policy_family_id != null && length(v.policy_family_id) > 0 }
}
output "cluster_policies_policy_id" {
  description = "Map of policy_id values across all cluster_policies, keyed the same as var.cluster_policies except keys with no policy_id are omitted"
  value       = { for k, v in databricks_cluster_policy.cluster_policies : k => v.policy_id if v.policy_id != null && length(v.policy_id) > 0 }
}
output "cluster_policies_provider_config" {
  description = "Map of provider_config values across all cluster_policies, keyed the same as var.cluster_policies except keys with no provider_config are omitted"
  value       = { for k, v in databricks_cluster_policy.cluster_policies : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

