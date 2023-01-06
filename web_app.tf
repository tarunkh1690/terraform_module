/**
** Web application
*/

module "web_application" {
  source                 = "./modules/inst_linux"
  ami                    = "ami-074dc0a6f6c764218"
  client                 = "${var.client}"
  tags                   = "${var.tags}"
  instance_type          = "t2.micro"
  key_name               = "keypair_${var.client.name}"
  vpc_security_group_ids = ["${aws_security_group.webapp.id}"]
  subnet_id              = "${local.aza_subnet_id}"



  root_block_device = [
    {
      encrypted   = true
      volume_size = "10"
      volume_type = "gp2"
    },
  ]

  host_prefix = "${var.client.prod_host_prefix}"

  hosts = ["Web01"]

}

module "web_application2" {
  source                 = "./modules/inst_linux"
  ami                    = "ami-074dc0a6f6c764218"
  client                 = "${var.client}"
  tags                   = "${var.tags}"
  instance_type          = "t2.micro"
  key_name               = "keypair_${var.client.name}"
  vpc_security_group_ids = ["${aws_security_group.webapp.id}"]
  subnet_id              = "${local.azb_subnet_id}"
 


  root_block_device = [
    {
      encrypted   = true
      volume_size = "10"
      volume_type = "gp2"
    },
  ]

  host_prefix = "${var.client.prod_host_prefix}"

  hosts = ["Web02"]


}