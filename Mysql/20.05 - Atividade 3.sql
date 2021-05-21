create database db_escola;
use db_escola;
create table tb_alunes(
id Bigint auto_increment,
nome varchar(255),
idade int,
serie char(1),
nota decimal(10,2),
primary key(id)
);

insert into tb_alunes(nome, idade, serie, nota) values
("Agatha", 6, 1, 10),
("Pedro", 7, 1, 5.00),
("Mauricio", 6, 2, 7.50),
("Maria", 6, 2, 8.00),
("Otavio", 7, 1, 4.20);

select * from alunes where nota > 7;
select * from alunes where nota < 7;