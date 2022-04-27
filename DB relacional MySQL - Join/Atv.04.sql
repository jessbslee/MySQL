DROP database db_cidade_das_carnes;
create database db_cidade_das_carnes;

use db_cidade_das_carnes;

-- CRIANDO TABELA MÃE
create table tb_categorias (
id bigint auto_increment,
tipo varchar (255) not null,
pecas varchar (255)not null, 
primary key (id)
);

-- REGISTRO
INSERT INTO tb_categorias (tipo, pecas) VALUES ("Maminha", "1.5kg");
INSERT INTO tb_categorias (tipo, pecas) VALUES ("Picanha", "2kg");
INSERT INTO tb_categorias (tipo, pecas) VALUES ("Alcatra", "2.5kg");
INSERT INTO tb_categorias (tipo, pecas) VALUES ("Musculo", "3kg");

-- CRIAR TABELA FILHA
create table tb_produtos (
id bigint auto_increment,
marca varchar (255) not null,
preco decimal not null,
validade date,
peso varchar (255) not null,
primary key (id),
categorias_id bigint not null,
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (marca, preco, validade, peso, categorias_id) VALUES ("Sadia", 50, "2022-04-06", "2kg", 2);
INSERT INTO tb_produtos (marca, preco, validade, peso, categorias_id) VALUES ("FriBoi", 100, "2022-03-11", "2.5kg", 1);
INSERT INTO tb_produtos (marca, preco, validade, peso, categorias_id) VALUES ("Seara", 150, "2022-05-13", "3kg", 4);
INSERT INTO tb_produtos (marca, preco, validade, peso, categorias_id) VALUES ("Perdigão", 120, "2022-06-13", "1.5kg", 3);
INSERT INTO tb_produtos (marca, preco, validade, peso, categorias_id) VALUES ("Maturata", 130, "2022-07-21", "4kg", 3);

-- SELEÇÃO > QUE 50
select * from tb_produtos;
select * from tb_categorias;

select * from tb_produtos WHERE preco > 50.00;

-- SELEÇÃO ENTRE 50 e 150
select * from tb_produtos WHERE marca BETWEEN 50 AND 150;

-- SELEÇÃO DE PRODUTOS COM A LETRA C 
select * from tb_produtos WHERE marca LIKE "%S%";

select * from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id where tb.categoria.tipo = "Picanha";

 






