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
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert tb_categoria (nome, cor, estado, receita) values 
("Genérico", "INCOLOR", "GERAL", false),
("Fitoterápico", "VERDE", "FÍSICO", false),
("Tarja preta", "PRETO", "FÍSICO", true),
("Primeiros socórros", "INCOLOR", "GERAL", false),  
("Psicotrópicos", "VERMELHOS", "LÍQUIDOS", true);

insert tb_produto (nome, qtd, ml, preco, categoria_id) values 
("Omeprazol", 2, 00.00, 20.00, 3),
("Dipírona", 20, 00.00, 3.50, 1),
("Chá de boldo", 5, 2.00, 5.00, 2),
("Loratadina", 5, 00.00, 15.00, 1),
("Benegripe", 10, 00.00, 7.50, 1),
("Tala", 1, 00.00, 20.00, 4),
("Neusaudina", 5, 00.00, 5.00, 1),
("Diazepam", 1, 6.00, 65.00, 3 );

-- ------------------------------------------------------------------------------------
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50.00;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco between 3.00 and 60.00;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where nome like "%B%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.nome = "Genérico";