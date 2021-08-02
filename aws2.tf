
resource "aws_instance" "app2_seraver" {
  associate_public_ip_address = true
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  monitoring = true
  vpc_security_group_ids= "group"

  metadata_options {
    http_tokens = "required"
  }

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
