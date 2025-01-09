CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(255) not null,
    curso varchar(255),
    turma varchar(255),
    nota float,
    primary key(id)
);

ALTER TABLE tb_estudantes MODIFY nota decimal(4,2);

INSERT INTO tb_estudantes (nome, curso, turma, nota)
VALUES ("Ana Paula Silva", "ciencias de dados", "cd01", 10),
		("Aline Moura", "administracao", "adm11", 7.5),
        ("Julio Ferreira", "letras", "lt06", 9),
        ("Marcos Antunes", "logistica", "lg10", 6),
		("Zila Santos", "engenharia civil", "aeg05", 9.5),
        ("Bernardo Leite", "ciencias da computacao", "cc02", 10),
		("Felipe Araujo", "enfermagem", "en21", 8.5),
        ("Alex Freitas", "letras", "lt06", 5),
        ("Paulo Gourd", "logistica", "gt09", 6);
        
SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7;

SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 9 WHERE id = 9;