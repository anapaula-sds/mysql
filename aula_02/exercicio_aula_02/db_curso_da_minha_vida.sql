CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id INT AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),             
	PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Desenvolvimento Web', 'Cursos de Front-end, Back-end e Full-stack.'),
('Design', 'Cursos de Design Gráfico, UX/UI e Motion Graphics.'),
('Marketing Digital', 'Cursos de SEO, Marketing de Conteúdo e Mídias Sociais.'),
('Idiomas', 'Cursos de Inglês, Espanhol, Francês e outros idiomas.'),
('Negócios', 'Cursos de Gestão, Finanças e Empreendedorismo.');

SELECT * FROM tb_categorias;

CREATE TABLE tb_curso (
	id INT AUTO_INCREMENT,
    nome_curso VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    area VARCHAR(255),
    escola VARCHAR(255),
    categoria_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id) 
);

INSERT INTO tb_curso (nome_curso, preco, area, escola, categoria_id) VALUES
('Desenvolvimento Web Full-Stack', 1200.00, 'Desenvolvimento', 'Digital House', 1),
('Design UX/UI', 900.00, 'Design', 'EBAC Online', 2),
('Marketing Digital para Iniciantes', 500.00, 'Marketing', 'Udemy', 3),
('Inglês Fluente em 6 Meses', 750.00, 'Idiomas', 'Wizard', 4),
('Gestão de Projetos Ágeis', 600.00, 'Gestão', 'Coursera', 5),
('Desenvolvimento Front-end com React', 800.00, 'Desenvolvimento', 'Alura', 1),
('Design Gráfico para Mídias Sociais', 400.00, 'Design', 'Domestika', 2),
('SEO para E-commerce', 550.00, 'Marketing', 'Rock Content', 3);

SELECT * FROM tb_curso;

SELECT * FROM tb_curso WHERE preco > 500.00;

SELECT * FROM tb_curso WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_curso WHERE nome_curso LIKE '%J%';

SELECT 
    tb_curso.id AS produto_id,
    tb_curso.nome_curso AS curso_nome,
    tb_curso.preco,
    tb_curso.area,
    tb_curso.escola,
    tb_categorias.nome_categoria AS categoria
FROM 
    tb_curso
INNER JOIN 
    tb_categorias
ON 
    tb_curso.categoria_id = tb_categorias.id;
    
SELECT 
    tb_curso.id AS produto_id,
    tb_curso.nome_curso AS curso_nome,
    tb_curso.preco,
    tb_curso.area,
    tb_curso.escola,
    tb_categorias.nome_categoria AS categoria
FROM 
    tb_curso
INNER JOIN 
    tb_categorias
ON 
    tb_curso.categoria_id = tb_categorias.id
WHERE 
    tb_categorias.nome_categoria = 'Design';
