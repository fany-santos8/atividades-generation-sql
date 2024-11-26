CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (categoria)
VALUES ( "Guerreiro");

INSERT INTO tb_classes (categoria) 
VALUES ( "Mago");

INSERT INTO tb_classes (categoria)
VALUES ( "Arqueiro");

INSERT INTO tb_classes (categoria)
VALUES ( "Vampiro");

INSERT INTO tb_classes (categoria)
VALUES ( "Assassino");

SELECT * FROM tb_classes;

USE db_generation_game_online; 
CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
nivel INT NOT NULL,
ataque INT NOT NULL,
defesa INT NOT NULL,
PRIMARY KEY(id)
);
   
   INSERT INTO tb_personagens (nome, nivel, ataque, defesa)
VALUES 
    ('Aragon', 10, 5000, 1000),
    ('Gandalf', 12, 6000, 800),
    ('Legolas', 8, 4000, 900),
    ('Boromir', 9, 4500, 1100),
    ('Aragorn', 15, 2000, 1200),
    ('Carther', 13, 6500, 700),
    ('Tauriel', 7, 3500, 850),
    ('Lurtz', 8, 3800, 950);
    
    SELECT * FROM tb_personagens;
    
    ALTER TABLE tb_personagens ADD classesid BIGINT;
    
    ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
    FOREIGN KEY (classesid) REFERENCES tb_classes (id);
    
        SELECT * FROM tb_personagens;

UPDATE tb_personagens SET classesid = 3 WHERE id = 1;
UPDATE tb_personagens SET classesid = 5 WHERE id = 2;
UPDATE tb_personagens SET classesid = 2 WHERE id = 3;
UPDATE tb_personagens SET classesid = 1 WHERE id = 4;
UPDATE tb_personagens SET classesid = 4 WHERE id = 5;
UPDATE tb_personagens SET classesid = 1 WHERE id = 6;
UPDATE tb_personagens SET classesid = 5 WHERE id = 7;
UPDATE tb_personagens SET classesid = 3 WHERE id = 8;

SELECT * FROM tb_personagens;

SELECT nome, nivel, ataque, defesa FROM tb_personagens
WHERE ataque > 2000
ORDER BY ataque;

SELECT nome, nivel, ataque, defesa FROM tb_personagens
WHERE defesa > 1000 AND defesa < 2000
ORDER BY defesa;

SELECT nome, nivel, ataque, defesa FROM tb_personagens
WHERE nome LIKE "%C%"
ORDER BY nome;

SELECT nome, nivel, ataque, defesa 
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classesid = tb_classes.id;

 
SELECT nome, nivel, ataque, defesa
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id = tb_classes.id
ORDER BY nome;

SELECT 
    tb_personagens.nome, 
    tb_personagens.nivel, 
    tb_personagens.ataque, 
    tb_personagens.defesa, 
    tb_classes.categoria
FROM 
    tb_personagens
INNER JOIN 
    tb_classes 
ON 
    tb_personagens.classesid = tb_classes.id
WHERE 
    tb_classes.categoria = 'Arqueiro';



