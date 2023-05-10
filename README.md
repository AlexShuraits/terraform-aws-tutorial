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
