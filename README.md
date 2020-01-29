## Terraform
![Distro](https://img.shields.io/badge/terraform-zabbix-blue)

Terraform é uma infraestrutura de código aberto como ferramenta de software de código criada pela HashiCorp. 
Ele permite que os usuários definam e provisionem uma infraestrutura de datacenter usando uma linguagem de configuração 
de alto nível conhecida como Hashicorp Configuration Language, ou opcionalmente JSON.https://www.terraform.io/

# Doc
https://docs.google.com/document/d/1z18a5a41KVr-6IowpkCj04Z2lyhQyff-VRFa4MrkgUA/edit?usp=sharing

## Dependências
 - Terraform versão 12
 - Credênciais de acesso cloud
 - git 
 - Provider AWS
 

## Uso do terraform
``` 
terraform init    = "Baixa plugins do provider configurado no código"  
terraform plan    = "Mostra o planejamento de aplicação do código no ambiente"
terraform apply   = "Aplica o código dentro do ambiente definido no provider"
terraform destroy = "Destroy tudo que foi construído pelo código"

 # Primeiro passo:
    - Realizar alterações nas variáveis adicionando as informações do ambiente
	- dentro do terminal clone o reposítório do projeto:
	  # git clone http://url.repositorio.com.br

 # Segundo passo:
	- Digitar: 
	# terraform init

 # Terceiro passo:
	- Digitar:
	# terraform plan

# Quarto passo:
	- Digitar:
	# terraform apply
```



## Uso do código (Exemplo)
```
module "ec2" {
  source                 = "./modules/ec2"
  

  name                   = "Zabbix-Server"
  instance_count         = 1

  ami                         = "ami-0a94ef97cb8e83811"
  instance_type               = "t2.medium"
  key_name                    = ""
  monitoring                  = true
  vpc_security_group_ids      = ["sg-039943d3b7268102d"]
  subnet_id                   = "subnet-8e90d9d2"
  associate_public_ip_address = true
  

  root_block_device = [{
    volume_type = "gp2"
    volume_size = 50
  }]

  tags = {
    Terraform   = "true"
    Environment = "Zabbix-Server-Prod"
  }
}
```

## Dados necessários
ami                         = "ami-0a94ef97cb8e83811"   # ID da AMI a ser utilizada

vpc_security_group_ids      = ["sg-039943d3b7268102d"]  # ID do security group

subnet_id                   = "subnet-8e90d9d2"         # ID da subnet

## Licença
Copyright © 2020 Mandic Cloud Solutions. Todos os direitos reservados.






