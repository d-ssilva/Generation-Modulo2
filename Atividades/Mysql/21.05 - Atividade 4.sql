create database db_cidade_das_frutas;
use db_cidade_das_frutas;
create table tb_categoria(
	id bigint auto_increment,
	nome varchar(50) not null,   
	primary key(id)
);
create table tb_produto(
	id bigint auto_increment,
    nome varchar(50),
    qtd int,   
    preco decimal (10,2),
    seco boolean,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert tb_categoria (nome) values 
("DOCES"),
("ÁCIDAS"),
("SEMIÁCIDAS"),
("OLEAGINOSAS"),  
("HIPER-HÍDRICAS");

insert tb_produto (nome, qtd, preco, seco, categoria_id) values 
("Açaí", 2, 2.50, false, 1),
("Melância", 20, 5.00, false, 5),
("Laranja", 12, 4.50, true, 2),
("Melão", 20, 5.00, false, 5),
("Abacate", 10, 6.50, false, 4),
("Amora", 5, 5.50, false, 2),
("Kiwi", 25, 8.50, true, 2);

-- ------------------------------------------------------------------------------------
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50.00;

-- Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco between 3.00 and 60.00;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where nome like "%C%";

-- Faça um um select com Inner join entre  tabela categoria e produto.
select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_produto.nome = "Melância";