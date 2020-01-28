#--------------------------------------------------------------------------------------------------------------
# CREDENTIALS                                                                                                 |
#--------------------------------------------------------------------------------------------------------------
provider "aws" {
  AWS_REGION="us-east-1"
  AWS_ACCESS_KEY_ID="$ACCESS_KEY"
  AWS_SECRET_ACCESS_KEY="$SECRET_KEY"
}

##provider "aws" {
##  region = "us-east-1"
##  shared_credentials_file = "~/.aws/credentials"
##  profile = "diego.nicacio"
##}