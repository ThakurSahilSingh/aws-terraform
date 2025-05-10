 variable name_prefix{
    type = string
 }

 variable image_id {
    type = string
 }

 variable instance_type{
    type = string
 }

 variable "key_name" {
  description = "Key pair for EC2 instances"
  type        = string
  default     = ""
}

 variable user_data{
    type = string
 }

 variable vpc_security_group_ids {
    type = list
  }
variable tags_lt{
    type = map(any)
}