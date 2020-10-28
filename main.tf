terraform {
  required_providers {
    confluentcloud = {
      source  = "registry.terraform.io/mongey/confluentcloud"
    }
    kafka = {
      source = "registry.terraform.io/mongey/kafka"
    }
  }
}

provider "confluentcloud" {
}

provider "kafka" {
}
