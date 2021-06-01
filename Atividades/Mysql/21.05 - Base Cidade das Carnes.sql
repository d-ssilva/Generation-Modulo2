create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Bovino",true);
insert tb_categoria (descricao, ativo) values ("Suino",true);
insert tb_categoria (descricao, ativo) values ("Aves",true);
insert tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert tb_categoria (descricao, ativo) values ("imbutidos",true);
insert tb_categoria (descricao, ativo) values ("outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(5,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("ASA",40.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Picanha",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("coxa de frango",20.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Bacon",30.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("hamburguer",60.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cupim",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Peito de frango",25.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Orelha de porco",20.00,30,4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Salame",18.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("medalhao",50.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("mocoto",20.00,30,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("chuleta",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);
insert tb_produtos (nome, preco, qtProduto) values ("soprador de churrasqueira",35.00,30);

select * from tb_produtos;

-- ORDENAÇÃO DE DADOS
-- Ordem alfabética crescente
select * from tb_produtos order by nome;

-- Ordem alfabética decrescente
select * from tb_produtos order by nome DESC;

-- TRIAGEM COM OP LÓGICOS																
select * from tb_produtos where preco > 20 and categoria_id = 1; -- as duas condições tem que ser satsfeitas										
select * from tb_produtos where preco > 20 or categoria_id = 1;  -- uma das condições tem que ser satsfeitas

-- USANDO O 'LIKE'
select * from tb_produtos where nome like "Ha%";
select * from tb_produtos where nome like "%Ha";
select * from tb_produtos where nome like "%Ha%";

-- TRIAGEM COM 'IN' E 'BETWEEN'
select * from tb_produtos where preco in (20, 30, 40);
select * from tb_produtos where preco  between 20 and 40;

-- CONTANDO CAMPOS NUMA TABELA
select count(categoria_id) from tb_produtos; -- ignorando o Null
select count(*) from tb_categoria;
select avg(preco) from tb_produtos; -- tirando média de preço
select sum(preco) from tb_produtos; -- soma total de preço

-- CONSULTAS DO TIPO 'JOIN'
select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao from tb_produtos -- separando colunas da tabela
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao from tb_produtos -- separando colunas da tabela
left join tb_categoria on tb_categoria.id = tb_produtos.categoria_id; -- vai trazer o mesmo resultado do 'inner join', somando os itens que não apareceram na tabela 1

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao from tb_produtos -- separando colunas da tabela
right join tb_categoria on tb_categoria.id = tb_produtos.categoria_id; -- vai trazer o mesmo resultado do 'inner join', somando os itens que não apareceram na tabela 1