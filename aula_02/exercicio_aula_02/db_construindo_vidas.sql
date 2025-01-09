CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
	id INT AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),             
	PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Materiais de Construção', 'Cimento, areia, tijolos, blocos, etc.'),
('Hidráulica', 'Tubos, conexões, torneiras, registros, etc.'),
('Elétrica', 'Fios, cabos, disjuntores, interruptores, tomadas, etc.'),
('Acabamento', 'Pisos, revestimentos, tintas, vernizes, etc.'),
('Ferramentas', 'Ferramentas manuais e elétricas.');

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

INSERT INTO tb_produtos (nome, preco, fabricante, tipo, categoria_id) VALUES
('Cimento CP-II 32kg', 29.90, 'Votoran', 'Saco', 1),
('Tijolo Cerâmico 9x19x19cm', 1.50, 'Cerâmica ABC', 'Unidade', 1),
('Tubo PVC Esgoto 100mm', 15.00, 'Tigre', 'Barra 6m', 2),
('Torneira Cozinha Metal Cromado', 45.00, 'Docol', 'Unidade', 2),
('Fio Elétrico 2.5mm Rolo 100m', 80.00, 'Prysmian', 'Rolo', 3),
('Tinta Acrílica Branca 18L', 120.00, 'Suvinil', 'Lata', 4),
('Piso Cerâmico 45x45cm Caixa 2m²', 55.00, 'Portobello', 'Caixa', 4),
('Furadeira Elétrica 1/2"', 180.00, 'Bosch', 'Unidade', 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

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
    tb_categorias.nome_categoria = 'Hidráulica';
