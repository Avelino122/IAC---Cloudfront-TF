variable "bucket_domain_name" {}
variable "origin_id" {}
variable "enabled" {}
variable "is_ipv6_enabled" {}
variable "comment" {}
variable "default_root_object" {}
variable "default_allowed_methods" {
  type = list(string)
}
variable "default_cached_methods" {
  type = list(string)
}
variable "target_origin_id" {}
variable "query_string" {
  type = bool
}
variable "cookies_forward" {}
variable "viewer_protocol_policy" {}
variable "min_ttl" {
  type = number
}
variable "default_ttl" {
  type = number
}
variable "max_ttl" {
  type = number
}
variable "ordered_cache_behavior_path_pattern" {}
variable "ordered_cache_behavior_allowed_methods" {
  type = list(string)
}
variable "ordered_cache_behavior_cached_methods" {
  type = list(string)
}
variable "ordered_cache_behavior_target_origin_id" {}
variable "ordered_cache_behavior_query_string" {
  type = bool
}
variable "ordered_cache_behavior_headers" {
  type = list(string)
}
variable "ordered_cache_behavior_cookies_forward" {}
variable "ordered_cache_behavior_min_ttl" {
  type = number
}
variable "ordered_cache_behavior_default_ttl" {
  type = number
}
variable "ordered_cache_behavior_max_ttl" {
  type = number
}
variable "ordered_cache_behavior_compress" {
  type = bool
}
variable "ordered_cache_behavior_viewer_protocol_policy" {}
variable "price_class" {}
variable "geo_restriction_type" {}
variable "geo_locations" {
  type = list(string)
}
variable "tags" {
  type = map(string)
}
variable "cloudfront_default_certificate" {
  type = bool
}
