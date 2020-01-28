provider "aws" {
  version = "~> 2.0"
  region = "us-east-1"
  access_key = "$ACCESS_KEY"
  secret_key = "$SECRET_KEY"

}

#--------------------------------------------------------------------------------------------------------------
# EC2                                                                                                         |
#--------------------------------------------------------------------------------------------------------------

module "ec2" {
  source                 = "./modules/ec2"
  

  name                   = "Zabbix-Server"
  instance_count         = 1

  ami                         = "ami-0a94ef97cb8e83811"
  instance_type               = "t2.medium"
  key_name                    = ""
  monitoring                  = true
  vpc_security_group_ids      = ["sg-039943d3b7268102d"]
  subnet_id                   = "subnet-8e90d9d2"
  associate_public_ip_address = true
  

  root_block_device = [{
    volume_type = "gp2"
    volume_size = 50
  }]

  tags = {
    Terraform   = "true"
    Environment = "Zabbix-Server-Prod"
  }
}








