provider "aws" {
  access_key = "AKIARLGKQYFY4XZYWII5"
  secret_key = "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"
  region = "eu-north-1"
}

resource "aws_instance" "wildfly_server" {
    ami = "ami-0fe8bec493a81c7da"
    instance_type = "t3.micro"
    user_data = file("install_wildfly.sh")

    tags = {
      Name = "WildFly_Terraform"
    }
}

resource "aws_instance" "jdk_server" {
    ami = "ami-0fe8bec493a81c7da"
    instance_type = "t3.micro"
    user_data = file("install_jdk.sh")

    tags = {
      Name = "jdk_Terraform"
    }
}

resource "aws_instance" "jenkins_server" {
    ami = "ami-0fe8bec493a81c7da"
    instance_type = "t3.micro"
    user_data = file("install_jenkins.sh")

    tags = {
      Name = "jenkins_Terraform"
    }
}