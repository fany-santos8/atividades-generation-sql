CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao TEXT
);

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES
    ('Medicamentos', 'Remédios de prescrição e venda livre'),
    ('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
    ('Suplementos', 'Suplementos vitamínicos e nutricionais'),
    ('Infantil', 'Produtos para cuidados infantis'),
    ('Higiene', 'Itens de higiene pessoal e limpeza');
    
    SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    descricao TEXT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos (nome, quantidade, valor, descricao, categoria_id) 
VALUES
    ('Dipirona', 100, 10.50, 'Analgésico e antitérmico', 1),
    ('Shampoo Anticaspa', 50, 25.00, 'Shampoo para tratamento de caspa', 2),
    ('Vitamina C', 30, 45.00, 'Suplemento vitamínico', 3),
    ('Fralda Infantil', 200, 60.00, 'Fralda descartável para bebês', 4),
    ('Sabonete Líquido', 150, 12.00, 'Sabonete líquido para uso diário', 5),
    ('Protetor Solar FPS 50', 75, 70.00, 'Protetor solar para todos os tipos de pele', 2),
    ('Colágeno em Pó', 40, 55.00, 'Suplemento de colágeno hidrolisado', 3),
    ('Escova de Dentes', 120, 8.00, 'Escova dental de cerdas macias', 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT 
    tb_produtos.nome AS Produto,
    tb_produtos.quantidade AS Quantidade,
    tb_produtos.valor AS Valor,
    tb_categorias.nome_categoria AS Categoria
FROM 
    tb_produtos
INNER JOIN 
    tb_categorias
ON 
    tb_produtos.categoria_id = tb_categorias.id;

SELECT 
    tb_produtos.nome AS Produto,
    tb_produtos.quantidade AS Quantidade,
    tb_produtos.valor AS Valor,
    tb_categorias.nome_categoria AS Categoria
FROM 
    tb_produtos
INNER JOIN 
    tb_categorias
ON 
    tb_produtos.categoria_id = tb_categorias.id
WHERE 
    tb_categorias.nome_categoria = 'Cosméticos';
