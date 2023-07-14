data "aws_vpc" "this" {
    tags = {
        Environment = "dev"
    }

    }


resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-genti"

  tags = {
    Name        = "My bucket genti" 
    Environment = "Dev"
  }
}

output "vpc_id" {
    value = data.aws_vpc.this.id
}
