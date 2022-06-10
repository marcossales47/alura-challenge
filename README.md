# alura-challenge
#Forma de usar

**docker build -t nome_da_imagem .

##Criação do container

**docker run --name nome_do_container -p 8000:8000 -d 

### Não precisa criar o superuser dentro do container, na imagem já foram colocadas variáveis de ambiente com os dados simbólicos ###

## Superuser ##

-> root
-> password: 1234

---

#Deploy no Kubernetes

*O yaml já vem com o service de Node Port configurado. Basta subir o yaml, verificar o ip do node do serviço de kubernetes e subir na porta 31750.
