#--------------------------------------------------------------------------------------------------------------
# CREDENTIALS                                                                                                 |
#--------------------------------------------------------------------------------------------------------------
##provider "aws" {
##  region = "us-east-1"
##  shared_credentials_file = "~/.aws/credentials"
##  profile = "diego.nicacio"
##}

provider "aws" {
  region = "us-east-1"
  aws_access_key_id = "$aws_access_key_id"
  aws_secret_access_key = "$aws_secret_access_key"
}