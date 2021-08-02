resource "aws_instance" "app3_seraver" {
  associate_public_ip_address = true
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
