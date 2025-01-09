CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id INT AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao TEXT,             
	PRIMARY KEY (id)
);

-- Inserir registros na tabela tb_categorias
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ('Medicamentos', 'Categoria de medicamentos em geral, incluindo medicamentos de venda livre e sob prescrição.');

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ('Higiene Pessoal', 'Produtos para higiene pessoal, como sabonetes, pastas de dente, desodorantes, etc.');

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ('Cosmeticos', 'Cosmeticos, como Maquiagem, Perfumes e Fragrâncias, Cuidados com as Unhas, etc.');

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ('Vitaminas e Suplementos', 'Suplementos vitamínicos e minerais para complementar sua alimentação.');

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES ('Aparelhos Respiratórios', 'Iinaladores, nebulizadores, aspiradores nasais e outros dispositivos relacionados ao tratamento de problemas respiratórios');

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    fabricante VARCHAR(255),
    descricao TEXT,
    categoria_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id) 
);

INSERT INTO tb_produtos (nome, preco, fabricante, descricao, categoria_id)
VALUES ('Paracetamol 500mg', 5.99, 'EMS', 'Analgésico e antitérmico para alívio da dor e febre.', 1);

INSERT INTO tb_produtos (nome, preco, fabricante, descricao, categoria_id)
VALUES ('Sabonete Líquido Dove Hidratação Profunda', 12.50, 'Unilever', 'Sabonete líquido hidratante para todos os tipos de pele.', 2);

INSERT INTO tb_produtos (nome, preco, fabricante, descricao, categoria_id)
VALUES ('Batom Matte Ruby Rose Cor Vermelho Intenso', 19.90, 'Ruby Rose', 'Batom com acabamento matte de longa duração.', 3);

INSERT INTO tb_produtos (nome, preco, fabricante, descricao, categoria_id)
VALUES ('Vitamina C 1000mg Efervescente', 25.00, 'Cimed', 'Suplemento vitamínico para fortalecer o sistema imunológico.', 4);

INSERT INTO tb_produtos (nome, preco, fabricante, descricao, categoria_id)
VALUES ('Nebulizador Ultrassônico G-Tech Nebdesk', 199.90, 'G-Tech', 'Nebulizador ultrassônico silencioso e portátil.', 5);

INSERT INTO tb_produtos (nome, preco, fabricante, descricao, categoria_id)
VALUES ('Ibuprofeno 400mg', 7.50, 'Medley', 'Anti-inflamatório e analgésico para alívio da dor e inflamação.', 1);

INSERT INTO tb_produtos (nome, preco, fabricante, descricao, categoria_id)
VALUES ('Shampoo Pantene Hidratação', 15.75, 'Procter & Gamble', 'Shampoo para cabelos secos e danificados, hidrata profundamente.', 2);

INSERT INTO tb_produtos (nome, preco, fabricante, descricao, categoria_id)
VALUES ('Perfume Flower by Kenzo Eau de Parfum', 350.00, 'Kenzo', 'Perfume feminino floral oriental, com notas de rosa, violeta e baunilha.', 3);

INSERT INTO tb_produtos (nome, preco, fabricante, descricao, categoria_id)
VALUES ('Perfume Sweet by Hinode', 51.00, 'Hinode', 'Perfume feminino doce , com notas de madeira, fresh e chocolate.', 3);

SELECT * FROM tb_produtos;

SELECT * 
FROM tb_produtos
WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';