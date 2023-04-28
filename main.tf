terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
    }

  }
}

provider "google" {
  project = "aicoe-prow"
  # export GOOGLE_APPLICATION_CREDENTIALS=google_secret.json
}

resource "google_dns_record_set" "cluster" {
  name = "phobos.b4mad.emea.operate-first.cloud."
  type = "CNAME"
  ttl  = 300

  managed_zone = "b4mad-emea-operate-first"

  rrdatas = [ "durandom.evils.in." ]
}

resource "google_dns_record_set" "api" {
  name = "api.phobos.b4mad.emea.operate-first.cloud."
  type = "CNAME"
  ttl  = 300

  managed_zone = "b4mad-emea-operate-first"

  rrdatas = [ "durandom.evils.in." ]
}

resource "google_dns_record_set" "apps" {
  name = "*.apps.phobos.b4mad.emea.operate-first.cloud."
  type = "CNAME"
  ttl  = 300

  managed_zone = "b4mad-emea-operate-first"

  rrdatas = [ "durandom.evils.in." ]
}

# resource "google_dns_record_set" "cluster_A" {
#   name = "phobos.b4mad.emea.operate-first.cloud."
#   type = "A"
#   ttl  = 300

#   managed_zone = "b4mad-emea-operate-first"

#   rrdatas = [ "86.103.35.248" ]
# }

# resource "google_dns_record_set" "api_A" {
#   name = "api.phobos.b4mad.emea.operate-first.cloud."
#   type = "A"
#   ttl  = 300

#   managed_zone = "b4mad-emea-operate-first"

#   rrdatas = [ "86.103.35.248" ]
# }

# resource "google_dns_record_set" "apps_A" {
#   name = "*.apps.phobos.b4mad.emea.operate-first.cloud."
#   type = "A"
#   ttl  = 300

#   managed_zone = "b4mad-emea-operate-first"

#   rrdatas = [ "86.103.35.248" ]
# }
