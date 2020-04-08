module "security-group" {
  source = "./security-group"
}

module "ec2" {
  source = "./ec2-server"
  SECURITY_GROUP = module.security-group.SECURITY_GROUP
}