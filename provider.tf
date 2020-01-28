#--------------------------------------------------------------------------------------------------------------
# CREDENTIALS                                                                                                 |
#--------------------------------------------------------------------------------------------------------------
#provider "aws" {
#  region = "us-east-1"
#  shared_credentials_file = "$ACESSO"
#  profile = "diego.nicacio"
#}


provider "aws" {
  region = "$REGION"
  access_key = "$ACCESS_KEY"
  secret_key = "$SECRET_KEY"
}