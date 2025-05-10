region = "ap-south-1"

###################
# VPC
tags_vpc = {
  Name = "tf-vpc-prod",
  Kind = "practice"
}
cidr_vpc = "10.2.0.0/16"

######################
# subnet-1-public-ap-south-1a
cidr_subnet_1 = "10.2.1.0/24"
az_subnet_1   = "ap-south-1a"
public_1      = "true"
tags_subnet_1 = {
  Name = "tf-pub-ap-south-1a-prod",
  Kind = "practice"
}

#######################
# subnet-2-public-ap-south-1b
cidr_subnet_2 = "10.2.2.0/24"
az_subnet_2   = "ap-south-1b"
public_2      = "true"
tags_subnet_2 = {
  Name = "tf-pub-ap-south-1b-prod",
  Kind = "practice"
}

#######################
# subnet-1-private-ap-south-1a
cidr_subnet_3 = "10.2.3.0/24"
az_subnet_3   = "ap-south-1a"
public_3      = "false"
tags_subnet_3 = {
  Name = "tf-priv-ap-south-1a-prod",
  Kind = "practice"
}

#######################
# subnet-2-private-ap-south-1b
cidr_subnet_4 = "10.2.4.0/24"
az_subnet_4   = "ap-south-1b"
public_4      = "false"
tags_subnet_4 = {
  Name = "tf-priv-ap-south-1b-prod",
  Kind = "practice"
}

#######################
# igw
tags_igw = {
  Name = "tf-igw-prod",
  Kind = "practice"
}

##############################
# route_table
rt_tags_pub = {
  Name = "tf-rt-public-prod",
  Kind = "practice"
}
rt_cidr_block_pub = "0.0.0.0/0"

rt_tags_priv = {
  Name = "tf-rt-private-prod",
  Kind = "practice"
}
rt_cidr_block_priv = "0.0.0.0/0"

##############################
# eip
tags_eip = {
  Name = "tf-eip-1-prod",
  Kind = "practice"
}

##############################
# nat
tags_nat = {
  Name = "tf-nat-1-prod",
  Kind = "practice"
}

##############################
# sg_alb_web
sg_name_web = "web-alb-sg"
tags_sg_web = {
  Name = "tf-web-alb-sg-prod",
  Kind = "practice"
}
ingress_rules_web = [
  {
    description     = "allow on 443"
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
    security_groups = null
  },
  {
    description     = "allow on 80"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
    security_groups = null
  }
]
egress_rules_web = [
  {
    description     = "allow"
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    security_groups = null
  }
]
sg_description_web = " SG for WEB ALB"

##############################
# sg_alb_app
sg_name_app = "app-alb-sg"
tags_sg_app = {
  Name = "tf-app-alb-sg-prod",
  Kind = "practice"
}
ingress_rules_app = [
  {
    description     = "allow on 443"
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
    security_groups = null
  },
  {
    description     = "allow on 80"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
    security_groups = null
  }
]
egress_rules_app = [
  {
    description     = "allow"
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    security_groups = null
  }
]
sg_description_app = " SG for APP ALB"

##############################
# sg_web_server
sg_name_web_server = "web_server-sg"
tags_sg_web_server = {
  Name = "tf-web_server-sg-prod",
  Kind = "practice"
}
egress_rules_web_server = [
  {
    description     = "allow"
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    security_groups = null
  }
]
sg_description_web_server = " SG for web_server"

##############################
# sg_app_server
sg_name_app_server = "app_server-sg"
tags_sg_app_server = {
  Name = "tf-app_server-sg-prod",
  Kind = "practice"
}
egress_rules_app_server = [
  {
    description     = "allow"
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    security_groups = null
  }
]
sg_description_app_server = " SG for app_server"

##############################
# web alb
tags_alb_web = {
  Name = "tf-webtier-alb-prod",
  Kind = "practice"
}

# app alb
tags_alb_app = {
  Name = "tf-apptier-alb-prod",
  Kind = "practice"
}

##############################
# target group
tags_web_tg = {
  Name = "tf-webtier-tg-prod",
  Kind = "practice"
}
tags_app_tg = {
  Name = "tf-apptier-tg-prod",
  Kind = "practice"
}
