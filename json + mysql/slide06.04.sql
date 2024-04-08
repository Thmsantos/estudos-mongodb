CREATE TABLE pessoas (
   id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   nome VARCHAR(50) NOT NULL,
   idade INT,
   info JSON
);

INSERT INTO pessoas (nome, idade, info) VALUES 
	('João', 35, '{"endereço": "Rua A, 123", "telefone": "1111-1111"}'
);

SELECT nome, json_extract(info,'$.telefone') as telefone FROM pessoas WHERE idade > 30;

update pessoas set info = json_set(info, '$.telefone', '2222-2222') where nome = "joao";

update pessoas set info = json_remove(info, '$.telefone') where nome = "joao";

SET SQL_SAFE_UPDATES = 0;


 