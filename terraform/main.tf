terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}
provider "local" {}
resource "local_file" "pipeline_status" {
  filename = "${path.module}/pipeline.txt"
  content  = "DevOps pipeline infrastructure provisioned successfully."
}
output "pipeline_file" {
  value = local_file.pipeline_status.filename
}