data "aws_vpc" "this" {
    tags = {
        enviroment = "dev"
    }

    }

output "vpc_id" {
    value = data.aws_vpc.this.id
}
