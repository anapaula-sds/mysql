CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id bigint AUTO_INCREMENT,
	descricao varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO tb_classe (descricao)
VALUES ("Guerreiro");
 
INSERT INTO tb_classe (descricao)
VALUES ("Mago");
 
INSERT INTO tb_classe (descricao)
VALUES ("Arqueiro");
 
INSERT INTO tb_classe (descricao)
VALUES ("Paladino");
 
INSERT INTO tb_classe (descricao)
VALUES ("Assassino");

SELECT * FROM tb_classe;


CREATE TABLE tb_personagem(
	id bigint AUTO_INCREMENT,
	nome varchar(255) NOT NULL,
    vida int,
    ataque float, 
    defesa float,
    classe_id bigint,
	PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
); 

INSERT INTO tb_personagem(nome, vida, ataque, defesa, classe_id)
VALUES ("Aragon", 10, 2100, 1800, 1);

INSERT INTO tb_personagem(nome, vida, ataque, defesa, classe_id)
VALUES ("Merlin", 10, 2500, 2000, 2);

INSERT INTO tb_personagem(nome, vida, ataque, defesa, classe_id)
VALUES ("Legolas", 9, 1900, 2000, 3);

INSERT INTO tb_personagem(nome, vida, ataque, defesa, classe_id)
VALUES ("Lancelot", 8, 1800, 2000, 4);

INSERT INTO tb_personagem(nome, vida, ataque, defesa, classe_id)
VALUES ("Shae", 10, 2200, 800, 5);

INSERT INTO tb_personagem(nome, vida, ataque, defesa, classe_id)
VALUES ("Morgana", 7, 2300, 2000, 2);

INSERT INTO tb_personagem(nome, vida, ataque, defesa, classe_id)
VALUES ("Thorin", 8, 800, 1500, 1);

INSERT INTO tb_personagem(nome, vida, ataque, defesa, classe_id)
VALUES ("Robin", 10, 1700, 1300, 3);

INSERT INTO tb_personagem(nome, vida, ataque, defesa, classe_id)
VALUES ("Kael", 8, 2000, 2000, 5);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nome LIKE '%C%';

SELECT 
    tb_personagem.id AS personagem_id,
    tb_personagem.nome AS personagem_nome,
    tb_personagem.vida,
    tb_personagem.ataque,
    tb_personagem.defesa,
    tb_classe.descricao AS classe
FROM 
    tb_personagem
INNER JOIN 
    tb_classe
ON 
    tb_personagem.classe_id = tb_classe.id;
    
    
SELECT 
    tb_personagem.id AS personagem_id,
    tb_personagem.nome AS personagem_nome,
    tb_personagem.vida,
    tb_personagem.ataque,
    tb_personagem.defesa,
    tb_classe.descricao AS classe
FROM 
    tb_personagem
INNER JOIN 
    tb_classe
ON 
    tb_personagem.classe_id = tb_classe.id
WHERE 
    tb_classe.descricao = 'Arqueiro';
