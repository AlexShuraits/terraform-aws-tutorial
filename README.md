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
```
# Step 2 : Vars file && SSH access
```
git fetch --all --tags
git checkout step2
```
Create my.tfvars file  
Add my_name variable with value
```
./terraform plan -var-file="my.tfvars"
./terraform apply -var-file="my.tfvars"
```
# Step 3 : Allow Internet Access to Instance
```
git checkout step3
./terraform apply -var-file="my.tfvars"
```
# Step 4 : Cleanup
```
./terraform destroy -var-file="my.tfvars"
```

