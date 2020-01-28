#--------------------------------------------------------------------------------------------------------------
# CREDENTIALS                                                                                                 |
#--------------------------------------------------------------------------------------------------------------
provider "aws" {
  region     = "$region"
  access_key = "$access_key"
  secret_key = "$secret_access"
}

##provider "aws" {
##  region = "us-east-1"
##  shared_credentials_file = "~/.aws/credentials"
##  profile = "diego.nicacio"
##}