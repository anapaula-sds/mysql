CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
    nome varchar(255) not null,
    cargo varchar(255) not null,
    salario decimal,
    gestor varchar(255) not null, 
    primary key(id)
);

ALTER TABLE tb_colaboradores CHANGE gestor departamento varchar(255) not null;

INSERT INTO tb_colaboradores (nome, cargo, salario, departamento)
VALUES ("Ana Paula Santana", "Engenheira de Software Sr.", 20.500, "T.I"),
	   ("David Kelvin Silva", "Desenvolvedor Back-end", 12.100, "T.I"),
	   ("Stephanny Vitoria Souza", "Administradora Pl.", 14.700, "ADM"),
	   ("Bruno Reis", "Vigia", 5.000, "Seguranca"),
	   ("João Lima", "Cozinheiro", 4.200, "Cozinha");
       
INSERT INTO tb_colaboradores (nome, cargo, salario, departamento)
VALUES ("Jose Almeida", "Auxiliar de Limpeza", 1.500, "Limpeza"),
	   ("Maria Alice Silva", "Auxiliar de Servico Geral", 1.750, "Limpeza");
       
ALTER TABLE tb_colaboradores MODIFY salario decimal(6,3);
       
SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2.000;

SELECT * FROM tb_colaboradores WHERE salario < 2.000;

UPDATE tb_colaboradores SET salario = 1.700 WHERE id = 6;