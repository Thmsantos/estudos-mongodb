create database aula_marcos;
use aula_marcos;

create table thiago(id int, dados json);

insert into thiago values(2, '{"Numero_Departamento": "5",
  "Data_Inicio_Gerente": "1988-05-22",
  "Nome_Departamento": "Pesquisa",
  "Cpf_Gerente": "33344555587",
  "Projeto": [
    {
      "Numero_Projeto": "2",
      "Nome_Projeto": "Produto Y",
      "Local_Projeto": "Itu"
    },
    {
      "Numero_Projeto": "3",
      "Nome_Projeto": "Produto Z",
      "Local_Projeto": "São Paulo"
    }
  ]
}'

),
(
3, '{
  "Numero_Departamento": "5",
  "Data_Inicio_Gerente": "1988-05-22",
  "Nome_Departamento": "Pesquisa",
  "Cpf_Gerente": "33344555587",
  "Projeto": [
    {
      "Numero_Projeto": "2",
      "Nome_Projeto": "Produto Y",
      "Local_Projeto": "Itu"
    },
    {
      "Numero_Projeto": "3",
      "Nome_Projeto": "Produto Z",
      "Local_Projeto": "São Paulo"
    }
  ]
}'

),
(
4, '{
  "Numero_Departamento": "5",
  "Data_Inicio_Gerente": "1988-05-22",
  "Nome_Departamento": "Pesquisa",
  "Cpf_Gerente": "33344555587",
  "Projeto": [
    {
      "Numero_Projeto": "2",
      "Nome_Projeto": "Produto Y",
      "Local_Projeto": "Itu"
    },
    {
      "Numero_Projeto": "3",
      "Nome_Projeto": "Produto Z",
      "Local_Projeto": "São Paulo"
    }
  ]
}'

),
(
5, '{
  "Numero_Departamento": "5",
  "Data_Inicio_Gerente": "1988-05-22",
  "Nome_Departamento": "Pesquisa",
  "Cpf_Gerente": "33344555587",
  "Projeto": [
    {
      "Numero_Projeto": "2",
      "Nome_Projeto": "Produto Y",
      "Local_Projeto": "Itu"
    },
    {
      "Numero_Projeto": "3",
      "Nome_Projeto": "Produto Z",
      "Local_Projeto": "São Paulo"
    }
  ]
}'

),
(
6, '{
  "Numero_Departamento": "5",
  "Data_Inicio_Gerente": "1988-05-22",
  "Nome_Departamento": "Pesquisa",
  "Cpf_Gerente": "33344555587",
  "Projeto": [
    {
      "Numero_Projeto": "2",
      "Nome_Projeto": "Produto Y",
      "Local_Projeto": "Itu"
    },
    {
      "Numero_Projeto": "3",
      "Nome_Projeto": "Produto Z",
      "Local_Projeto": "São Paulo"
    }
  ]
}'

);

select json_pretty(dados) from thiago;

select json_extract(dados, "$.Nome_Departamento") as Nome,
	   json_extract(dados, "$.Cpf_Gerente") as cpf,
       json_extract(dados, "$.Projeto[0].Nome_Projeto", "$.Projeto[1].Nome_Projeto") as nome_projeto
from thiago;

select json_extract(dados, "$.Projeto[0]") as projeto_Um
from thiago 
where json_extract(dados, "$.Projeto[0]") = json_extract(dados, "$.Projeto[0]");


select sum(json_extract(dados, "$.Cpf_Gerente")) as soma_cpf from thiago;
