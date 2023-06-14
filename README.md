# Installation  

Two stage installation

![Overview](AWS_CICD_pipeline.png)


## Requirements:
- Terraform CLI installed with access to your target AWS account

## Deployment
Stage1
- Clone repo into folder
- change into terraform subfolder
- Update terraform.tfvars to suit your environment
- Run command 'Terraform init'
- Optional Checkov check via  "checkov -d . --download-external-modules True"
- Run command 'Terraform plan' 
- Run command 'Terraform apply' and type 'yes' to confirm deployment

Stage2
- Clone newly created AWS CodeCommit Repo into empty folder
- navigate  apicaller-repo sub folder
- copy samTemplate.yml from terraform apply parent folder to current folder
- copy buildspec.ym from terraform apply parent folder to current folder
- copy appfolder from terraform apply parent folder to current folder
- push code to newly created AWS codecommit repository


## Tidy up
- Manually delete CloudFormation stack apicaller
- Manually empty artifact bucket
- Run command 'Terraform destroy'
 
