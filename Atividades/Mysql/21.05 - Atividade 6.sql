create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;
create table tb_categoria(
	id bigint auto_increment,
	nome varchar(50) not null,
    ead boolean not null,    
	primary key(id)
);
create table tb_produto(
	id bigint auto_increment,
    nome varchar(50),
    professor varchar(50),
    certificacao boolean,   
    preco decimal (10,2),    
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert tb_categoria (nome, ead) values 
("CURSO", true),
("INTÊNSIVO", false),
("CAPACITAÇÃO", false);


insert tb_produto (nome, professor, certificacao, preco, categoria_id) values 
("Desenvolvedor Java", "Aimée", false, 00.00, 2),
("Tec. Enfermagem", "Elisa", false, 1500.00, 2),
("Tec. Eletrônica", "Hercules", false, 524.99, 3),
("Libras", "Aimée", true, 00.00, 2),
("Banco de Dados", "Rafael", false, 00.00, 2),
("Elétrica", "Hercules", false, 277.23, 3),
("Inglês", "Bárbara", false, 549.99, 1),
("CCNA", "Hercules", true, 277.23, 3);

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
where tb_produto.professor = "Aimée";