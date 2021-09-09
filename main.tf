provider "aws" {
shared_credentials_file  = "~/.aws/credentials"
  region     = "ap-south-1"
}

module demovpc {
  source = "./vpc"

}

module demosubnet {
source = "./Subnet"
vpc_id = "${module.demovpc.vpc_id.id}"
}

module demointernetgate {
source = "./InternetGateway"
vpc_id = "${module.demovpc.vpc_id.id}"
}

module demoroutetable {
source = "./Routers"
vpc_id = "${module.demovpc.vpc_id.id}"
gateway = "${module.demointernetgate.awsinternet.id}"
gateway_id = "${module.demointernetgate.awsinternet.id}"
subnet_id_public = "${module.demosubnet.public.id}"
subnet_id_private = "${module.demosubnet.private.id}"

}

module demoinstance {
source = "./ec2instance"
subnet_id = "${module.demosubnet.public.id}"
}
