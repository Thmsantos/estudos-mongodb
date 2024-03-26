create database aula_mongo;
use aula_mongo;

create table fatec(
	id int,
    documento json
);

insert fatec values (4, 
	'{
		"nome": "Thiago",
        "idade": 42,
        "casado": true,
        "filhos": ["fernanda", "caio"]
	}'
);


select * from fatec;

select json_extract(documento,"$.idade") as idade from fatec;

select json_pretty(documento) as doc from fatec;

