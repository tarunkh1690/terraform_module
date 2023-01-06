variable "client" {
#    type    = "map"

    default = {
        "account"           = "181513438476"
        "region"            = "ap-south-1"
        "name"              = "testClient"
        "prod_host_prefix"  = "SERVERPROD"
    }
}

variable "testClient_nlp_ips" {
    default = ["172.31.0.0/20","172.31.32.0/20"]
}

variable "public_lb_ips" {
    default = ["3.7.200.138/32","65.1.141.152/32"]
}

