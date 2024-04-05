O provisionamento dos recursos são feitos com Terraform (https://www.terraform.io).
este projeto ainda está em construção, atualmente existe apenas o cloudfront configurado e pronto para ser executado. entretanto esse terraform usa como origin um s3. 
o plan da sucesso, mas se na hora de rodar o apply você não tiver chamado o nome certo do s3 via .tfvars, esse projeto não vai subir. a menos que você ou tenha 
outra origin como resource, ou até o proprio s3 invocado. 
Serviços AWS utilizados:
- Application Load Balancer
- Cloudfront

## Deploy

```bash
terraform init
terraform plan -var-file="content.tfvars" -out="plan.tfplan"
Destroy:
terraform destroy -var-file main.tfvars
```
