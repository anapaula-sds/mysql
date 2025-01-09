CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal,
    cor varchar(255),
    quantidade int,
    primary key(id)
);

ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

INSERT INTO tb_produtos (nome, preco, cor, quantidade)
VALUES ("Geladeira", 5000.00, "prata", 50),
	   ("Fogao", 459.99, "preto", 23),
	   ("Ventilador", 150.00, "branco", 15),
	   ("Televisao", 3599.99, "preta", 30);
       
INSERT INTO tb_produtos (nome, preco, cor, quantidade)
VALUES ("Celular", 2500.00, "prata", 40),
	   ("Secador", 59.99, "rosa", 13),
	   ("Notebook", 4500.00, "branco", 9),
	   ("Impressora", 499.99, "preta", 18);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 3700.00 WHERE id = 4;