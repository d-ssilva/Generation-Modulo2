create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categoria(
	id bigint auto_increment,
    nome varchar(50) not null,  
    preco decimal (10,2) not null,
    primary key(id)
);
create table tb_pizza(
	id bigint auto_increment,
    sabor varchar(50),    
    descricao varchar(255),
    tamanho char not null,
    qtd int,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert tb_categoria (nome, preco) values 
("QUEIJO", 35.00),          -- 1
("CARNE", 40.00),			-- 2
("FRUTOS DO MAR", 50.00),   -- 3
("VEGANA", 62.50),			-- 4
("DOCE", 55.50);			-- 5

insert tb_pizza (sabor, descricao, tamanho, qtd, categoria_id) values 
("TRÊS QUEIJOS", "sem o qjo 'provolone'", 'G', 1, 1), 
("TOSCANA", "sem cebola", 'G', 3, 2),
("CAMARÃO", "n/a", 'P', 1, 3),
("ROMEU E JULIETA", "n/a", 'M', 1, 5),
("ATUM", "sem cebola", 'M', 4, 3),
("CINCO QUEIJOS", "n/a", 'G', 1, 1),
("BRIGADEIRO", "no lugar de granulado, m&m", 'G', 4, 5),
("CALABRESA", "sem cebola", 'G', 1, 2);

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
select * from tb_pizza inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id
where tb_categoria.preco > 45;

-- Faça um select trazendo  os Produtos com valor entre 29 e 60 reais.
select * from tb_pizza inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id
where tb_categoria.preco between 29 and 60;

-- Faça um select  utilizando LIKE buscando os Produtos com a letra C.
select * from tb_pizza inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id
where tb_categoria.nome like "%c%";

-- Faça um um select com Inner join entre  tabela categoria e pizza.
select * from tb_pizza inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
select * from tb_pizza inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id
where tb_categoria.nome = "DOCE";