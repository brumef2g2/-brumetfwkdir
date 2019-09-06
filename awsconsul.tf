terraform {
  required_version = ">=0.12"
}

provider "aws" {
  region     = "us-east-1"
}

module "consul" {
  source      = "hashicorp/consul/aws"
  version = "0.7.3"
  num_servers = "3"
}
