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
  access_key = "$aws_access_key_id"
  secret_key = "$aws_secret_access_key"
}