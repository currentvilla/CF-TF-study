resource "aws_vpc" "aws-study-vpc" {
  cidr_block = "10.0.0.0/16"

tags = {
    Name = "aws-study-vpc"
  }
}