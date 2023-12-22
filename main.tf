// terraform code to configure cloudflare provider for dns
provider "cloudflare" {
  email   = "your-email@example.com"
  api_key = "your-api-key"
}

resource "cloudflare_record" "example" {
  domain = "example.com"
  name   = "test"
  value  = "192.0.2.1"
  type   = "A"
  ttl    = 3600
}
