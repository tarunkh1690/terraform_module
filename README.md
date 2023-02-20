# terraform_module


A Terraform module is a set of Terraform configuration files in a single directory. A Terraform module allows you to create logical abstraction on the top of some resource set. In other words, a module allows you to group resources together and reuse this group later, possibly many times.

I have Written terraform code to create ec2 instances with tomcat application server.I am using shell script to deploy tomcat and sample java application. I have created a module to create linux ec2 instances with dynamic storage configuration along with public and private application load balancer.
