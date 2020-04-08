module "security-group" {
  source = "./security-group"
  SECURITY_GROUP = module.security-group.SECURITY_GROUP
}