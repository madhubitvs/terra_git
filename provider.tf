provider "aws" {
  #profile = "default"
  region  = "us-east-1"
  #access_key = "AKIAZRKSNYAUOSXFZ3N3"
  #secret_key = "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"
  shared_creadentials_file = "$HOME/.aws/credentials"
  profile = myprofile

}
