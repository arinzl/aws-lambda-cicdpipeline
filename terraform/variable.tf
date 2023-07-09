variable "region" {
  description = "AWS Region"
  type        = string

}


variable "app_name" {
  description = "Applicaiton Name"
  type        = string

}

variable "vpc_cidr_range" {
  type = string

}


variable "private_subnets_list" {
  description = "Private subnet list for infrastructure"
  type        = list(string)

}


variable "public_subnets_list" {
  description = "Public subnet list for infrastructure"
  type        = list(string)

}

variable "repo_branch" {
  description = "Repo Branch Name"
  type        = string

}

variable "request_layer_arn" {
  description = "lambda python 3.10 request layer name"
  type        = string

}

variable "ssm_parameter_store_key" {
  description = "location of ssm parameter (without / prefix)"
  type        = string

}
