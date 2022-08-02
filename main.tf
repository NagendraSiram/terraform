provider "aws" {
	region = "us-east-1"
	access_key = ""
	secret_key = ""
}

resource "aws_instance" "service_instance" {
	ami = ""
	instance_type = "t2.micro"
	tags {
		Name = "dev_instance"
	}
}

# resource "<provider>_<resource_type>" "name" {
#	config options...
#	key = "value"
#
# }

resource "aws_vpc" "dev-vpc" {
	cidr_block = "10.0.0.0/16"
	tags {
		Name = "dev_vpc"
	}
}

resource "aws_subnet" "subnet-1" {
	vpc_id = aws_vpc.dev-vpc.id
	cidr_block = "10.0.1.0/20"
	tags {
		Name = "dev_subnet"
	}
}
