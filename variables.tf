variable "bucket_domain_name" {
  type        = string
  description = "The domain name of the S3 bucket."
}

variable "origin_id" {
  type        = string
  description = "A unique identifier for the origin."
}

variable "enabled" {
  type        = bool
  description = "Whether the CloudFront distribution is enabled."
}

variable "is_ipv6_enabled" {
  type        = bool
  description = "Whether IPv6 is enabled for the CloudFront distribution."
}

variable "comment" {
  type        = string
  description = "A comment for the CloudFront distribution."
}

variable "default_root_object" {
  type        = string
  description = "The object that CloudFront returns when requests for the root URL."
}

variable "default_allowed_methods" {
  type        = list(string)
  description = "List of allowed methods for the default cache behavior."
}

variable "default_cached_methods" {
  type        = list(string)
  description = "List of cached methods for the default cache behavior."
}

variable "target_origin_id" {
  type        = string
  description = "The origin ID for the default cache behavior."
}

variable "query_string" {
  type        = bool
  description = "Whether the query string is forwarded to the origin."
}

variable "cookies_forward" {
  type        = string
  description = "Specifies how CloudFront forwards cookies to the origin."
}

variable "viewer_protocol_policy" {
  type        = string
  description = "The viewer protocol policy for the default cache behavior."
}

variable "min_ttl" {
  type        = number
  description = "The minimum amount of time that you want objects to stay in CloudFront caches."
}

variable "default_ttl" {
  type        = number
  description = "The default amount of time (in seconds) that an object is in a CloudFront cache."
}

variable "max_ttl" {
  type        = number
  description = "The maximum amount of time (in seconds) that an object is in a CloudFront cache."
}

variable "ordered_cache_behavior_path_pattern" {
  type        = string
  description = "The pattern (path) that determines which requests this cache behavior applies to."
}

variable "ordered_cache_behavior_allowed_methods" {
  type        = list(string)
  description = "List of allowed methods for the ordered cache behavior."
}

variable "ordered_cache_behavior_cached_methods" {
  type        = list(string)
  description = "List of cached methods for the ordered cache behavior."
}

variable "ordered_cache_behavior_target_origin_id" {
  type        = string
  description = "The origin ID for the ordered cache behavior."
}

variable "ordered_cache_behavior_query_string" {
  type        = bool
  description = "Whether the query string is forwarded to the origin for the ordered cache behavior."
}

variable "ordered_cache_behavior_headers" {
  type        = list(string)
  description = "Specifies the headers that are forwarded to the origin for the ordered cache behavior."
}

variable "ordered_cache_behavior_cookies_forward" {
  type        = string
  description = "Specifies how CloudFront forwards cookies to the origin for the ordered cache behavior."
}

variable "ordered_cache_behavior_min_ttl" {
  type        = number
  description = "The minimum amount of time that you want objects to stay in CloudFront caches for the ordered cache behavior."
}

variable "ordered_cache_behavior_default_ttl" {
  type        = number
  description = "The default amount of time (in seconds) that an object is in a CloudFront cache for the ordered cache behavior."
}

variable "ordered_cache_behavior_max_ttl" {
  type        = number
  description = "The maximum amount of time (in seconds) that an object is in a CloudFront cache for the ordered cache behavior."
}

variable "ordered_cache_behavior_compress" {
  type        = bool
  description = "Whether CloudFront automatically compresses certain files for the ordered cache behavior."
}

variable "ordered_cache_behavior_viewer_protocol_policy" {
  type        = string
  description = "The viewer protocol policy for the ordered cache behavior."
}

variable "price_class" {
  type        = string
  description = "The price class for the CloudFront distribution."
}

variable "geo_restriction_type" {
  type        = string
  description = "The type of restriction (whitelist, blacklist, none) for the distribution."
}

variable "geo_locations" {
  type        = list(string)
  description = "The list of country codes to include in the whitelist or blacklist."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resource."
}

variable "cloudfront_default_certificate" {
  type        = bool
  description = "Whether the CloudFront distribution should use the default CloudFront certificate."
}
variable "region" {
  type = string
}

variable "shared_credentials_file" {
  type        = list(string)
  description = "(Required) Shared credentials file for AWS profiles."
  default     = ["~/.aws/credentials"]
}
