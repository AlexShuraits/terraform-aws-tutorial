# AWS cli
### Install OSx
```
brew install awscli
```
### Install Windows
```
https://awscli.amazonaws.com/AWSCLIV2.msi
```
### Configure
```
aws configure
```
### Check current account
```
aws sts get-caller-identity
```
### Check profile
```
 cat ~/.aws/credentials
```
# SSH key
# Generate
```
ssh-keygen -t rsa
```
# Show public key
```
cat ~/.ssh/id_rsa.pub
```
# Step 1 : VPC & Instance
```
./terraform init
./terraform apply
git fetch --all --tags
git checkout step2
```
# Step 2 : Vars file && SSH access
Create my.tfvars file  
Add my_name variable with value
```
./terraform plan -var-file="my.tfvars"
./terraform apply -var-file="my.tfvars"
git checkout step3
```
