create database db_ecomerce;
use db_ecomerce;

create table produtos(
id bigint auto_increment,
primary key(id),
nome varchar(255) not null,
quantidade bigint,
preco decimal not null,
descricao varchar(999)
);

drop table produtos;

insert into produtos (nome, quantidade, preco, descricao) values
("Poster", 5, 25.00, "Xenomorph"),
("Desodorante", 6, 12.50, "Axe"),
("Talheres", 20,60.00, ""),
("Capinha celular", 20, 15.00, "Diversos modelos"),
("Canetas", 50, 20.00, "Caixas fechadas / Diversas cores"),
("Caderno", 12, 15.60, ""),
("Toalhas de banho", 50, 20.00, ""),
("Lixeiras", 20, 12.60, ""),
("Balm", 10, 20, "");

select * from produtos;
select * from produtos where preco > 500;
select * from produtos where preco < 500;