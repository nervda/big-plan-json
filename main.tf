terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }
  }
}

provider "null" {
  # Configuration options
}


resource "null_resource" "test" {
  count = 1000

  provisioner "local-exec" {
    command = "echo ${count.index}"
  }
}
