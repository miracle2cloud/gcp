# [END storage_bucket_tf_with_versioning]
terraform {
 backend "gcs" {
   bucket  = "bucket-tfstate-leo-new"
   prefix  = "terraform/state"
   credentials = "terraform-infra-123.json"
 }
}