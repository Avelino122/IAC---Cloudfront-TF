provider "aws" {
  region                  = var.region
  shared_credentials_files = var.shared_credentials_file  
}

module "cloudfront" {
  source = "./Modulos/cloudfront"

  bucket_domain_name                         = var.bucket_domain_name
  origin_id                                  = var.origin_id
  enabled                                    = var.enabled
  is_ipv6_enabled                            = var.is_ipv6_enabled
  comment                                    = var.comment
  default_root_object                        = var.default_root_object
  default_allowed_methods                    = var.default_allowed_methods
  default_cached_methods                     = var.default_cached_methods
  target_origin_id                           = var.target_origin_id
  query_string                               = var.query_string
  cookies_forward                            = var.cookies_forward
  viewer_protocol_policy                     = var.viewer_protocol_policy
  min_ttl                                    = var.min_ttl
  default_ttl                                = var.default_ttl
  max_ttl                                    = var.max_ttl
  ordered_cache_behavior_path_pattern        = var.ordered_cache_behavior_path_pattern
  ordered_cache_behavior_allowed_methods     = var.ordered_cache_behavior_allowed_methods
  ordered_cache_behavior_cached_methods      = var.ordered_cache_behavior_cached_methods
  ordered_cache_behavior_target_origin_id    = var.ordered_cache_behavior_target_origin_id
  ordered_cache_behavior_query_string        = var.ordered_cache_behavior_query_string
  ordered_cache_behavior_headers             = var.ordered_cache_behavior_headers
  ordered_cache_behavior_cookies_forward     = var.ordered_cache_behavior_cookies_forward
  ordered_cache_behavior_min_ttl             = var.ordered_cache_behavior_min_ttl
  ordered_cache_behavior_default_ttl         = var.ordered_cache_behavior_default_ttl
  ordered_cache_behavior_max_ttl             = var.ordered_cache_behavior_max_ttl
  ordered_cache_behavior_compress            = var.ordered_cache_behavior_compress
  ordered_cache_behavior_viewer_protocol_policy = var.ordered_cache_behavior_viewer_protocol_policy
  price_class                                = var.price_class
  geo_restriction_type                       = var.geo_restriction_type
  geo_locations                              = var.geo_locations
  tags                                       = var.tags
  cloudfront_default_certificate             = var.cloudfront_default_certificate
}
