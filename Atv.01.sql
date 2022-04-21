create database db_servico_rh;

use db_servico_rh;

create table tb_user(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
celular int (255) not null,
cidade varchar(255),
salario float not null,
primary key(id)
);

select * from tb_user;

insert into tb_user (nome,idade,celular,cidade,salario) values ("Day",24,11998074,"Gru",10000);
insert into tb_user (nome,idade,celular,cidade,salario) values ("Bea",26,11988075,"SP",8000);
insert into tb_user (nome,idade,celular,cidade,salario) values ("MauMau",26,1194376,"SP",1999);
insert into tb_user (nome,idade,celular,cidade,salario) values ("Tai",30,11972412,"Osasco",10000);
insert into tb_user (nome,idade,celular,cidade,salario) values ("Mateus",27,1196653,"SP",1999);

alter table tb_user
add idade int;

alter table tb_user
add celular int (255);

alter table tb_user
add cidade varchar(255);

select nome from tb_colaboradores where salario > 2000;
select nome from tb_colaboradores where salario < 2000;

