create database db_farmacia_do_bem;
use db_farmacia_do_bem;
create table tb_categoria(
	id bigint auto_increment,
	nome varchar(50) not null,
    cor varchar(15),
    estado varchar(20) not null,
    receita boolean not null,
    primary key(id)
);
create table tb_produto(
	id bigint auto_increment,
    nome varchar(50),
    qtd int,
    ml decimal (10,2),
    preco decimal (10,2),
    categoria_id bigint,
    primary key(id)
    Fore 
);
 
insert tb_categoria (nome, cor, estado, receita) values 
("Genérico", "INCOLOR", "GERAL", false),
("Fitoterápico", "VERDE", "FÍSICO", false),
("Tarja preta", "PRETO", "FÍSICO", true),
("Primeiros socórros", "INCOLOR", "GERAL", false),  
("Psicotrópicos", "VERMELHOS", "LÍQUIDOS", true);