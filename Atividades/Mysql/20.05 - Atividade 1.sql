create database db_rh;

use db_rh;

create table tb_funcionaries(
id bigint auto_increment,
primary key (id),
nome varchar(255) not null,
endereco varchar(255),
cpf varchar(255) unique,
numero int,
idade int,
salario decimal,
setor varchar(255)
);

insert into tb_funcionaries(nome, endereco, cpf, numero, idade, salario, setor) 
values ("Davi", "Rua acácias", "450.555.841-8",  230, 30, 2500.00, "TI"),
	   ("Thaís", "Av Florencia", "18.505.278-x", 30, 41, 3500.00, "RH"),
       ("Vinícius", "Rua St. Cristóvão", "580.200.478-x", 35, 38, 800.00, "OPERAÇÃO"),
       ("Pedro", "Av Getúlio", "115.510.496-7", 10, 29, 1450.00, "RH"),
	   ("Sasuke Uchiha", "Caguebuchi", "748.68.784-1", 350, 45, 800.00, "OPERAÇÃO");

select * from tb_funcionaries;

select * from tb_funcionaries where salario > 2000;
select * from tb_funcionaries where salario < 2000;
update tb_funcionaries set numero = 180 where nome = "Pedro";

