CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
data_admissao DATE,
cargo VARCHAR(255) NOT NULL,
salario DECIMAL (6,2),
PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores(nome, data_admissao, cargo, salario)
VALUES ("Julia", "2025-02-10","Back-end",2000),
("Ana", "2025-02-10","Back-end",2000),
("Maria", "2025-02-10","Cientista de Dados",4000),
("João", "2025-02-10","Analista",2500),
("Pedro", "2025-02-10","Front-end",5000);

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

INSERT INTO tb_colaboradores(nome, data_admissao, cargo, salario)
VALUES ("Lucas", "2025-02-10","Back-end",1900);

SELECT * FROM tb_colaboradores;

UPDATE tb_colaboradores SET salario = 7000 WHERE id = 1;





