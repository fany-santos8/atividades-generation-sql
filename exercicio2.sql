CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
produto VARCHAR(255),
preço DECIMAL(6,2),
marca VARCHAR(255),
quantidade INT,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(produto, preço, marca, quantidade)
VALUES 
("Iphone 15 PRO Max", 7000, "Apple", 27),
("Fone HP", 20, "hP", 200),
("Mouse", 120, "Red Dragon", 270),
("Monitor", 1200, "LG", 287),
("Monitor", 700, "Xpto", 47),
("S24", 4000, "Samsung", 125),
("Iphone 12", 2500, "Apple", 43),
("Apple Watch", 1000, "Apple", 27);


SELECT * FROM tb_produtos WHERE preço > 500;
SELECT * FROM tb_produtos WHERE preço < 500;

UPDATE tb_produtos SET preço = 925 WHERE id = 8;

