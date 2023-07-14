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


module "s3_object" {
    source = "./modules/s3"
    bucket_name = aws_s3_bucket.example.bucket
    file_key = "my-first-bucket-file"
    file_source = "./myfile.txt"
}

output "vpc_id" {
    value = data.aws_vpc.this.id
}
