#variable "client" {
#    type    = "map"
#
#    default = {
#        "account"           = "181513438476"
#        "region"            = "ap-south-1"
#        "name"              = "testClient"
#        "prod_host_prefix"  = "SERVERPROD"
#    }
#}

locals {
    vpc_id             = "vpc-0957274813512bcb9"
    aza_subnet_id      = "subnet-0c11c36d97a954389"
    azb_subnet_id      = "subnet-0ba318e8225a3395c"
    azc_subnet_id      = "subnet-08bfaf43aeb4886e4"

#    assume_role_policy = "${data.aws_iam_policy_document.assume_role_policy.json}"
#    policy = "${data.aws_iam_policy_document.policy.json}"
#    aws_cloudwatch_log_group_arn = aws_cloudwatch_log_group.webappcloudwatchgrp.arn
}

variable "public_key" {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDBcx8wDTynCQ7/KisJXvKqc+8YdFULEgCICAZrjGY61xmxy4QI+j6RrhyJpkLDhHsG5wY4YeEBGHvjnYX6x4P91F2fYHB0mMCYM4/TwdH+SzDrD+DCyd/i0sxKKLs4VZr/bhtqQ4VqV3sGXwuaUYqcQbLfDmwWGyPoTw47jxjQ59sFvPoF2tszykXOWxa/Wo6GTLJ+ab8dDZcIJrQ7qUsDbb6C90jpUU3pm5JsmqO+ts6ZLht2/7gBjdxKKMFz5hEoM5ZjyTHFAwZ5HpupHJqGJMwWj/h2SUh4AZ5e5q2UYG1l1x6N6Ij4+nPDwII2loh4vZQyWJRHXhYFPtVU1tyEQkrwd0dmzXah3+RUoTNuygtgTLXfK1BC5TDzfs74KwOf2O5zuYQVrZNcQkjTWQOArdY8TFNIjQku62s420fiBeUXnTRWTIEuTZHhZtVYWcANL3XHyn+5RRjk1dnTGbMeNeGKt+Hxbz3dTFMOyRA1PxpwUjHdAkJE7c+feSJMM/c="
}


variable "tags" {
    default = {
        Name =  ""
    }
}



variable "userDataScript" {
    default = ""
}


