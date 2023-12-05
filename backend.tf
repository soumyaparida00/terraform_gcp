terraform {
 backend "gcs" {
   bucket  = "vtb2017-186514-tfstate"
   prefix  = "terraform/state"
 }
}