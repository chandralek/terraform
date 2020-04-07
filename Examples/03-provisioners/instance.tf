resource "aws_instance" "" {
  ami = "ami-0777ff5c030fe1d38"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-08a40e4443cb4ef02"]

  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "root"
      password = "DevOps321"
      host     = self.public_ip
    }

    inline = [
      "cd /root",
      "export GIT_USER=chandralekha882",
      "export GIT_PASSWORD=Opcqa123!",
      "git clone https://chandralekha882:Opcqa123!@gitlab.com/batch46/shell-scripting.git",
      "sh shell-scripting/robo-shop-project/project.sh"
    ]
  }
}