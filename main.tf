module "ec2" {
  source = "./modules/ec2"
}

module "secrets" {
  source = "./modules/secrets"
  password = var.password
}