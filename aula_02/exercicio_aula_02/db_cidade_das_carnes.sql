CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id INT AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),             
	PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ('Bovinos', 'Carnes de gado bovino selecionadas');

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ('Suínos', 'Carnes de porco frescas e de qualidade');

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ('Aves', 'Frangos inteiros, em pedaços e outras aves');

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ('Embutidos', 'Linguiças, salsichas, salames e outros embutidos');

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ('Kits Churrasco', 'Kits prontos para o seu churrasco');

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    fabricante VARCHAR(255),
    tipo VARCHAR(255),
    categoria_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id) 
);

INSERT INTO tb_produtos (nome, preco, fabricante, tipo, categoria_id)
VALUES ('Contrafilé', 69.99, 'Frigobom', 'Corte Resfriado', 1);

INSERT INTO tb_produtos (nome, preco, fabricante, tipo, categoria_id)
VALUES ('Linguiça Toscana', 24.50, 'Seara', 'Embutido Fresco', 4);

INSERT INTO tb_produtos (nome, preco, fabricante, tipo, categoria_id)
VALUES ('Peito de Frango', 24.99, 'Sadia', 'Congelado', 3);

INSERT INTO tb_produtos (nome, preco, fabricante, tipo, categoria_id)
VALUES ('Costela Suína Temperada', 29.99, 'Aurora', 'Temperada Resfriada', 2);

INSERT INTO tb_produtos (nome, preco, fabricante, tipo, categoria_id)
VALUES ('Asa de Frango', 14.99, 'Coperfrango', 'Resfriada', 3);

INSERT INTO tb_produtos (nome, preco, fabricante, tipo, categoria_id)
VALUES ('Salame Italiano', 39.90, 'Perdigão', 'Embutido Defumado', 4);

INSERT INTO tb_produtos (nome, preco, fabricante, tipo, categoria_id)
VALUES ('Picanha', 99.99, 'Swift', 'Corte Resfriado', 1);

INSERT INTO tb_produtos (nome, preco, fabricante, tipo, categoria_id)
VALUES ('Mortadela Bologna', 29.90, 'Sadia', 'Defumada', 4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE PRECO > 50.00;

SELECT * FROM tb_produtos WHERE PRECO BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT 
    tb_produtos.id AS produto_id,
    tb_produtos.nome AS produto_nome,
    tb_produtos.preco,
    tb_produtos.fabricante,
    tb_produtos.tipo,
    tb_categorias.nome_categoria AS categoria
FROM 
    tb_produtos
INNER JOIN 
    tb_categorias
ON 
    tb_produtos.categoria_id = tb_categorias.id;
    
SELECT 
    tb_produtos.id AS produto_id,
    tb_produtos.nome AS produto_nome,
    tb_produtos.preco,
    tb_produtos.fabricante,
    tb_produtos.tipo,
    tb_categorias.nome_categoria AS categoria
FROM 
    tb_produtos
INNER JOIN 
    tb_categorias
ON 
    tb_produtos.categoria_id = tb_categorias.id
WHERE 
    tb_categorias.nome_categoria = 'Aves';
