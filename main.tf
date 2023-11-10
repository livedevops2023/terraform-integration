provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "class-instance" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  key_name      = "class-keypair"

  tags = {
    Name = "class-instance"
 }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "class-s3-bucket-11102023"

  tags = {
    Name = "my s3 bucket"
    Environment = "Dev"
  }
}
