CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id INT AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao TEXT,             
	PRIMARY KEY (id)
);

-- Inserir registros na tabela tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ('Salgada', 'Pizzas com sabores tradicionais e salgados, como calabresa, frango, e outros.');

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ('Doce', 'Pizzas com sabores doces, como chocolate, banana e frutas diversas.');

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ('Vegana', 'Pizzas preparadas com ingredientes 100% vegetais, sem qualquer produto de origem animal.');

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ('Sem Glúten', 'Pizzas adaptadas para pessoas com intolerância ao glúten, utilizando massa sem glúten.');

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ('Exclusivas', 'Pizzas gourmet com combinações criativas e diferenciadas de ingredientes.');

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    descricao TEXT,
    avaliacao INT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id) 
);
 
 -- Inserir registros na tabela tb_pizzas
INSERT INTO tb_pizzas (nome, preco, descricao, avaliacao, categoria_id) 
VALUES ('Pizza de Calabresa', 35.50, 'Calabresa, queijo e molho de tomate', 4, 1);

INSERT INTO tb_pizzas (nome, preco, descricao, avaliacao, categoria_id) 
VALUES ('Pizza de Chocolate', 30.00, 'Chocolate meio amargo com pedaços de morango', 5, 2);

INSERT INTO tb_pizzas (nome, preco, descricao, avaliacao, categoria_id) 
VALUES ('Pizza Vegana de Legumes', 40.00, 'Pimentão, cebola, cogumelos e molho pesto vegano', 4, 3);

INSERT INTO tb_pizzas (nome, preco, descricao, avaliacao, categoria_id) 
VALUES ('Pizza Sem Glúten de Frango', 50.00, 'Frango, milho e molho especial em massa sem glúten', 5, 4);

INSERT INTO tb_pizzas (nome, preco, descricao, avaliacao, categoria_id) 
VALUES ('Pizza de Banana com Canela', 85.00, 'Banana, canela e açúcar, uma deliciosa sobremesa', 5, 2);

INSERT INTO tb_pizzas (nome, preco, descricao, avaliacao, categoria_id) 
VALUES ('Pizza Margherita', 75.00, 'Tomate, queijo mozzarella, manjericão fresco e azeite', 4, 1);

INSERT INTO tb_pizzas (nome, preco, descricao, avaliacao, categoria_id) 
VALUES ('Pizza de Cogumelos e Alho', 45.50, 'Cogumelos frescos, alho e molho branco', 4, 1);

INSERT INTO tb_pizzas (nome, preco, descricao, avaliacao, categoria_id) 
VALUES ('Pizza de Frutos do Mar', 100.00, 'Camarão, lula e molho de alho com ervas finas', 5, 1);

SELECT * FROM tb_pizzas;

SELECT * 
FROM tb_pizzas
WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT 
    tb_pizzas.id AS pizzas_id,
    tb_pizzas.nome AS pizzas_nome,
    tb_pizzas.preco,
    tb_pizzas.descricao,
    tb_pizzas.avaliacao,
    tb_categorias.nome_categoria AS categorias
FROM 
    tb_pizzas
INNER JOIN 
    tb_categorias
ON 
    tb_pizzas.categoria_id = tb_categorias.id;
    
SELECT 
    tb_pizzas.id AS pizzas_id,
    tb_pizzas.nome AS pizzas_nome,
    tb_pizzas.preco,
    tb_pizzas.descricao,
    tb_pizzas.avaliacao,
    tb_categorias.nome_categoria AS categorias
FROM 
    tb_pizzas
INNER JOIN 
    tb_categorias
ON 
    tb_pizzas.categoria_id = tb_categorias.id
WHERE 
    tb_categorias.nome_categoria = 'Salgada';
    
    