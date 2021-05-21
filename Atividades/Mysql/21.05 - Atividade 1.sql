create database db_generation_game_online;
use db_generation_game_online;
create table  tb_classe(
	id bigint auto_increment,
	nome varchar(50),
    arma varchar(10),
    poderDeAtaque int,
    poderDeDefesa int,
    primary key(id)    
);
create table tb_raca(
	id bigint auto_increment,
    nome varchar(50) not null,
    estatura char,    
    primary key(id)    
);
create table  tb_personagem(
	id bigint auto_increment,
    nome varchar(255),
    idade int,       
    classe_id bigint,
    raca_id bigint,
    primary key(id),
    foreign key (classe_id) references tb_classe(id),
    foreign key (raca_id) references tb_raca(id)
);
-- drop table tb_classe;
-- drop table tb_personagem;
-- drop table tb_raca;
select * from tb_classe;
select * from tb_raca;
select * from tb_personagem;

-- Dados classes
INSERT tb_classe (nome, arma, poderDeAtaque, poderDeDefesa) values ("ARQUEIRO", "ARCO", 1200, 2500);      -- 1
INSERT tb_classe (nome, arma, poderDeAtaque, poderDeDefesa) values ("GUERRIERO", "ESPADA", 2500, 5000);   -- 2
INSERT tb_classe (nome, arma, poderDeAtaque, poderDeDefesa) values ("MAGO", "CAJADO", 3500, 500);         -- 3
INSERT tb_classe (nome, arma, poderDeAtaque, poderDeDefesa) values ("LADINO", "PUNHAL", 3000, 3000);      -- 4
INSERT tb_classe (nome, arma, poderDeAtaque, poderDeDefesa) values ("DRUIDA", "NATUREZA", 2000, 4000);    -- 5
INSERT tb_classe (nome, arma, poderDeAtaque, poderDeDefesa) values ("PALADINO", "MARTELO", 4000, 5000);   -- 6
INSERT tb_classe (nome, arma, poderDeAtaque, poderDeDefesa) values ("NECROMANTE", "TREVAS", 1500, 1000);  -- 7

-- -- Dados raças
INSERT tb_raca (nome, estatura) values ("ANÃO", 'P');     -- 1
INSERT tb_raca (nome, estatura) values ("HUMANO", 'M');   -- 2
INSERT tb_raca (nome, estatura) values ("ELFO", 'M');     -- 3
INSERT tb_raca (nome, estatura) values ("MEIO ORC", 'G'); -- 4
INSERT tb_raca (nome, estatura) values ("HOBBIT", 'G');  -- 5
update tb_raca set estatura = 'P' where nome = "HOBBIT";

-- Dados personagens
INSERT tb_personagem (nome, idade, classe_id, raca_id) values ("Derick", 23, 1, 2);      
INSERT tb_personagem (nome, idade, classe_id, raca_id) values ("Heleonora", 42, 6, 2);
INSERT tb_personagem (nome, idade, classe_id, raca_id) values ("Varrick", 30, 4, 1);
INSERT tb_personagem (nome, idade, classe_id, raca_id) values ("Fiona", 500, 7, 3);
INSERT tb_personagem (nome, idade, classe_id, raca_id) values ("Elsio", 2500, 1, 3);      
INSERT tb_personagem (nome, idade, classe_id, raca_id) values ("Illi-Horn", 39, 2, 4);
INSERT tb_personagem (nome, idade, classe_id, raca_id) values ("Elissa", 19, 5, 5);
INSERT tb_personagem (nome, idade, classe_id, raca_id) values ("Calista", 24, 4, 2);
DELETE FROM tb_personagem WHERE id = 9;
-- ------------------------------------------------------------------------------------
-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem inner join tb_classe -- TABELAS PARA EXIBIÇÃO 
on tb_classe.id = tb_personagem.id -- COMPARAÇÃO
where tb_classe.poderDeAtaque > 2000 order by tb_personagem.nome;

-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.id 
where tb_classe.poderDeAtaque < 2000 order by tb_classe.nome;

-- Faça um select  utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagem where tb_personagem.nome like "%c%";

-- Faça um um select com Inner join entre tabela classe e personagem.
select * from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.classe_id;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
select * from tb_personagem inner join tb_classe inner join tb_raca
on tb_classe.id = tb_personagem.classe_id and tb_personagem.raca_id = tb_raca.id
order by tb_raca.nome;