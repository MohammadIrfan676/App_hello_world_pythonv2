module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = "flipkart-vpc-prod" #changed name to match prod.
  cidr = "10.0.0.0/16"
  azs  = ["us-east-1a", "us-east-1b"]

  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.11.0/24", "10.0.12.0/24"]

  map_public_ip_on_launch = true
  enable_nat_gateway = true #changed to true
  single_nat_gateway = true #added for prod

  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  #Added for prod
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }

  tags = {
    Terraform = "true"
  }
}
