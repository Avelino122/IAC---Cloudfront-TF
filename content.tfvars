bucket_domain_name          = "Thierrys-s3-thierrys"
origin_id                   = "thierrys_origin"
enabled                     = true
is_ipv6_enabled             = true
comment                     = "Some comment"
default_root_object         = "mypic"
default_allowed_methods     = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
default_cached_methods      = ["GET", "HEAD"]
target_origin_id            = "my_first_origin"
query_string                = false
cookies_forward             = "none"
viewer_protocol_policy      = "allow-all"
min_ttl                     = 0
default_ttl                 = 3600
max_ttl                     = 86400


ordered_cache_behavior_path_pattern = "/content/immutable/*"
ordered_cache_behavior_allowed_methods = ["GET", "HEAD", "OPTIONS"]
ordered_cache_behavior_cached_methods = ["GET", "HEAD", "OPTIONS"]
ordered_cache_behavior_target_origin_id = "thierrys_origin"
ordered_cache_behavior_query_string = false
ordered_cache_behavior_headers = ["Origin"]
ordered_cache_behavior_cookies_forward = "none"
ordered_cache_behavior_min_ttl = 0
ordered_cache_behavior_default_ttl = 86400
ordered_cache_behavior_max_ttl = 31536000
ordered_cache_behavior_compress = true
ordered_cache_behavior_viewer_protocol_policy = "allow-all"

price_class = "PriceClass_200"
geo_restriction_type = "whitelist"
geo_locations        = ["US", "CA", "GB", "IN"]

tags = {
  Environment = "production"
}

cloudfront_default_certificate = true
region = "eu-west-2"
shared_credentials_file = ["~/.aws/credentials"] 

