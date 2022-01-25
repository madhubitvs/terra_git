provider "aws" {
  region  = "us-east-1"
  shared_credentials_file = "$HOME/.aws/credentials"
  profile = "iam_myuser_profile"
}
