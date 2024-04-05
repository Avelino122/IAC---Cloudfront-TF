
resource "aws_cloudfront_distribution" "cdn" {

  origin {
    domain_name = var.bucket_domain_name
    origin_id   = var.origin_id
  }

  enabled             = var.enabled
  is_ipv6_enabled     = var.is_ipv6_enabled
  comment             = var.comment
  default_root_object = var.default_root_object

  default_cache_behavior {
    allowed_methods  = var.default_allowed_methods
    cached_methods   = var.default_cached_methods
    target_origin_id = var.target_origin_id

    forwarded_values {
      query_string = var.query_string
      cookies {
        forward = var.cookies_forward
      }
    }

    viewer_protocol_policy = var.viewer_protocol_policy
    min_ttl                = var.min_ttl
    default_ttl            = var.default_ttl
    max_ttl                = var.max_ttl
  }

  ordered_cache_behavior {
    path_pattern     = "/content/immutable/*"
    allowed_methods  = ["GET", "HEAD", "OPTIONS"]
    cached_methods   = ["GET", "HEAD", "OPTIONS"]
    target_origin_id = "my_first_origin"
forwarded_values {
      query_string = false
      headers      = ["Origin"]
cookies {
        forward = "none"
      }
    }
min_ttl                = 0
    default_ttl            = 86400
    max_ttl                = 31536000
    compress               = true
    viewer_protocol_policy = "allow-all"
  }
# Cache behavior with precedence 1
  ordered_cache_behavior {
    path_pattern     = "/content/*"
    allowed_methods  = ["GET", "HEAD", "OPTIONS"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id  = "my_first_origin"
forwarded_values {
      query_string = false
cookies {
        forward = "none"
      }
    }
min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
    compress             = true
    viewer_protocol_policy = "redirect-to-https"
  }
price_class = var.price_class

  restrictions {
    geo_restriction {
      restriction_type = var.geo_restriction_type
      locations        = var.geo_locations
    }
  }

  tags = var.tags

  viewer_certificate {
    cloudfront_default_certificate = var.cloudfront_default_certificate
  }
}