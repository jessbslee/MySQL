create database db_ecommerce;

use db_ecommerce;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
grupo varchar (255) not null,
albuns varchar  (255) not null,
versao varchar (255) not null,
preco float not null,
primary key(id)
);

select * from tb_produto;

insert into tb_produto (nome, grupo, albuns, versao, preco) values ("Wings","BTS","mini álbum","A",71);
insert into tb_produto (nome, grupo, albuns, versao, preco) values ("Forever Young","BTS","full Album","B",121);
insert into tb_produto (nome, grupo, albuns, versao, preco) values ("I’m your man","2PM","mini álbum","C",55);
insert into tb_produto (nome, grupo, albuns, versao, preco) values ( "Act. 7","4Minute","mini álbum","D",66);
insert into tb_produto (nome, grupo, albuns, versao, preco) values ("In Heaven","JYJ","mini álbum","E",43);
insert into tb_produto (nome, grupo, albuns, versao, preco) values ("Single","2NE1","single","F",33);
insert into tb_produto (nome, grupo, albuns, versao, preco) values ("YNWA","BTS","full album","A",81);
insert into tb_produto (nome, grupo, albuns, versao, preco) values ("Seoulite","Lee Hi","mini álbum","B",59);

select * from tb_produto where preco > 500;

select *from tb_produto where preco < 500;

update tb_produto set versao = "full album" where id = 5

