create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;
create table tb_categoria(
	id bigint auto_increment,
	nome varchar(50) not null,
    insalubre boolean not null,    
	primary key(id)
);
create table tb_produto(
	id bigint auto_increment,
    nome varchar(50),
    marca varchar(50),
    qtd int,   
    preco decimal (10,2),    
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert tb_categoria (nome, insalubre) values 
("FERRAMENTA", false),
("MATERIAL", true),
("INGREDIENTE", true),
("EPI", false);

insert tb_produto (nome, marca, qtd, preco, categoria_id) values 
("Marreta Oitavada", "Tramontina", 1, 6157.99, 1),
("Kit Ponteiro + Talhadeira", "Tramontina", 5, 22.90, 1),
("Protetor Auricular", "1100 ", 5, 24.99, 4),
("Capacete", "H-700", 5, 43.99, 4),
("Argamassa", "Votomassa", 20, 11.99, 2),
("Cimento", "Votoran", 25, 25.90, 3),
("Furadeira", "Bosch", 1, 219.90, 1),
("Piso Cerâmico", "Eliano", 212, 87.23, 2);

-- ------------------------------------------------------------------------------------
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50.00;
select * from tb_produto;
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
where tb_categoria.nome = "EPI";