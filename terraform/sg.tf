resource "aws_security_group" "sg_tech_challenge_api_eks" {
  name        = "SG-${var.projectName}"
  description = var.projectName
  vpc_id      = var.vpc_id

  ingress {
    description = "Java"
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr_block]
  }

  egress {
    description = "All"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg_tech_challenge_api_eks"
  }
}