data "aws_vpc" "this" {
    tags = {
        Enviroment = "dev"
    }

    }

output "vpc_id" {
    value = data.aws_vpc.this.id
}
