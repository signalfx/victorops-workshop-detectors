provider "signalfx" {
  auth_token = var.access_token
  api_url    = "https://api.${var.realm}.signalfx.com"
}

module "host" {
  source     = "./modules/host"
  sfx_prefix = var.sfx_prefix
  sfx_vo_id = var.sfx_vo_id
  routing_key = var.routing_key
}