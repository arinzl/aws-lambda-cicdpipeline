region   = "ap-southeast-2"
app_name = "apicaller"

vpc_cidr_range       = "172.17.0.0/20"
private_subnets_list = ["172.17.1.0/24"]
public_subnets_list  = ["172.17.15.0/24"]


#app_folder = "appfolder"

repo_branch             = "main"
ssm_parameter_store_key = "apicaller/url"
request_layer_arn       = "arn:aws:lambda:ap-southeast-2:484673417484:layer:request3_10_mac:1"
