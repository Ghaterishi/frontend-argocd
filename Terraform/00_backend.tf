terraform {
  backend "s3" {
    bucket         = "githubaction-cicd-tfstate-dev"
    key            = "dev/us-west-2/GitHubaction/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "GitHubactionCICDLockdev"
  }
}


