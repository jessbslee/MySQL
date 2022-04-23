create database db_notas;

use db_notas;

create table tb_estudantes(
id bigint auto_increment,
nome varchar (255) not null,
serie int not null,
materia varchar (255) not null,
nota double not null,
classificacao varchar (255) not null,
primary key(id)
);

select * from tb_estudantes;

insert into tb_estudantes (nome,serie,materia,nota,classificacao) values ("Tainã",9,"Inglês",10,"Aprovada");
insert into tb_estudantes (nome,serie,materia,nota,classificacao) values ("Mariah",5,"Português",8,"Aprovada");
insert into tb_estudantes (nome,serie,materia,nota,classificacao) values ("Nathan",7,"Matemática",4,"Reprovado");
insert into tb_estudantes (nome,serie,materia,nota,classificacao) values ("Heloísa",1,"Português",9,"Aprovada");
insert into tb_estudantes (nome,serie,materia,nota,classificacao) values ("Luís Victor",5,"Ciências",5,"Reprovado");
insert into tb_estudantes (nome,serie,materia,nota,classificacao) values ("Laura",4,"História",6,"Aprovada");
insert into tb_estudantes (nome,serie,materia,nota,classificacao) values ("Helena",2,"Artes",7,"Reprovada");
insert into tb_estudantes (nome,serie,materia,nota,classificacao) values ("Caique",8,"Geografia",6.5,"Aprovado");

select * from tb_estudantes where nota > 7;

select * from tb_estudantes where nota < 7;

update tb_estudantes set classificacao = "Aprovada" where id = 7;




