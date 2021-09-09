resource "aws_instance" "foo" {
  ami           = "ami-0a23ccb2cdd9286bb" 
  instance_type = "t2.micro"
  subnet_id = var.subnet_id

}
