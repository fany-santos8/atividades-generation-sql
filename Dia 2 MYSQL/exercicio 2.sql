CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao TEXT
);

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES
    ('Tradicional', 'Pizzas clássicas com sabores tradicionais'),
    ('Doce', 'Pizzas doces com coberturas variadas'),
    ('Vegetariana', 'Pizzas sem carne, com opções vegetarianas'),
    ('Premium', 'Pizzas gourmet com ingredientes especiais'),
    ('Kids', 'Pizzas pequenas para crianças');

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    ingredientes TEXT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);


INSERT INTO tb_pizzas (nome, tamanho, valor, ingredientes, categoria_id) VALUES
    ('Margherita', 'Grande', 50.00, 'Molho, mussarela, tomate, manjericão', 1),
    ('Calabresa', 'Grande', 45.00, 'Molho, mussarela, calabresa, cebola', 1),
    ('Brigadeiro', 'Grande', 35.00, 'Chocolate, granulado, leite condensado', 2),
    ('Banana com Canela', 'Grande', 40.00, 'Banana, canela, açúcar', 2),
    ('Vegetariana Especial', 'Média', 55.00, 'Molho, mussarela, cogumelos, abobrinha', 3),
    ('Quatro Queijos', 'Grande', 60.00, 'Mussarela, parmesão, gorgonzola, provolone', 1),
    ('Frango com Catupiry', 'Média', 50.00, 'Molho, frango, catupiry', 4),
    ('Mini Pepperoni', 'Pequena', 20.00, 'Molho, mussarela, pepperoni', 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;


SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';


SELECT 
    tb_pizzas.nome AS Pizza,
    tb_pizzas.tamanho AS Tamanho,
    tb_pizzas.valor AS Valor,
    tb_categorias.nome_categoria AS Categoria
FROM 
    tb_pizzas
INNER JOIN 
    tb_categorias
ON 
    tb_pizzas.categoria_id = tb_categorias.id;

SELECT 
    tb_pizzas.nome AS Pizza,
    tb_pizzas.tamanho AS Tamanho,
    tb_pizzas.valor AS Valor,
    tb_categorias.nome_categoria AS Categoria
FROM 
    tb_pizzas
INNER JOIN 
    tb_categorias
ON 
    tb_pizzas.categoria_id = tb_categorias.id
WHERE 
    tb_categorias.nome_categoria = 'Doce';
