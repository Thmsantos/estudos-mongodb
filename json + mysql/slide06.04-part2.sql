create database bdnr;
use bdnr;

create table aluno(ra int, dados json);

insert aluno values (2, '{
	"nome": "joão",
    "idade": 30,
    "casado": true,
    "filhos": ["Maria", "Pedro"]
}');

select * from aluno;

select JSON_PRETTY (dados) from aluno;

SELECT 
	JSON_EXTRACT(dados,"$.nome") as nome 
FROM
	Aluno;
    
    
SELECT 
	JSON_EXTRACT(dados,"$.Nome") as nome 
FROM
	Aluno; 
#case sensitive (Nome com "n" maiusculo não funciona


SELECT 
	JSON_EXTRACT(dados,"$.filhos") as filhos
FROM
	Aluno;
    
insert aluno values (3,'{
    "nome": "Marcos",
    "idade": 52,
    "casado": true,
    "filhos": ["Maria", "Pedro"]
}');

select
	JSON_EXTRACT(dados, "$.nome") as nome,
    JSON_EXTRACT(dados, "$.idade") as idade
from 
	aluno
where json_extract(dados, "$.nome") = "Marcos";


select
	JSON_EXTRACT(dados, "$.nome") as nome,
    JSON_EXTRACT(dados, "$.idade") as idade
from 
	aluno
where json_extract(dados, "$.idade") >= 30;


select
	JSON_EXTRACT(dados, "$.nome") as nome,
    JSON_EXTRACT(dados, "$.idade") as idade
from 
	aluno
where json_extract(dados, "$.idade") > 30;

SELECT 
Sum(JSON_EXTRACT(dados,"$.idade")) as idade 
FROM
	Aluno;
    
SELECT 
	JSON_EXTRACT(dados,"$.filhos[0]") as nome 
FROM
	Aluno;






