resource "aws_security_group" "sg_group" {
  name        = local.sg_name
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id

  tags =merge(
     var.common_tags,
     var.sg_tags,
     {
    Name = local.sg_name
     }
  ) 
}

