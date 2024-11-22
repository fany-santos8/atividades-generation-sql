CREATE DATABASE tb_escola;

USE tb_escola;

CREATE TABLE tb_alunos (
id BIGINT AUTO_INCREMENT,
matricula VARCHAR (255),
nome VARCHAR (255),
nota DECIMAL (4,2),
turma VARCHAR (255),
PRIMARY KEY(id)
);

INSERT INTO tb_alunos (matricula, nome, nota, turma)
VALUES 
(5213, "Julia", 9.5, 77),
(5214, "Ana", 10, 77),
(5215, "Otávio", 9.0, 77),
(5216, "Lucas", 10, 77),
(5217, "Pedro", 3.5, 78),
(5218, "João", 2.0, 78),
(5219, "Maria", 5.5, 78),
(5220, "Davi", 4.5, 78);

SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;

INSERT INTO tb_alunos (matricula, nome, nota, turma)
VALUES (5221, "Matheus", 5.5, 78);

SELECT * FROM tb_alunos;

UPDATE tb_alunos SET nota = 6.0 WHERE id = 6;

