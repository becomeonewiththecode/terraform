# Terraform is configured by to read variables
# from ~/.aws/credentials files if it exist, if not you can create.
# a file with those credentials described.

# these are your credentials for connecting to AWS.
provider "aws" {
	region = "${var.region}"
        profile = "${var.profile}"
}

resource "aws_instance" "webserver" {
	ami = "ami-fce3c696"
	instance_type = "t2.micro"
}
