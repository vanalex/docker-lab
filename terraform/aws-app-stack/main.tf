terraform{
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 3.27"
      }
    }
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "vm-web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "server for web"
    Env = "dev"
  }
}