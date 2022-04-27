DROP database db_construindo_vidas;
create database db_construindo_vidas;

-- usar DB
use db_construindo_vidas;

-- Criando tabela mãe 
create table tb_categorias (
id bigint auto_increment,
ambiente varchar (255) not null,
departamento varchar (255) not null, 
primary key (id)
);

-- REGISTRO
INSERT INTO tb_categorias (ambiente, departamento) VALUES ("Banheiro", "Pisos e Revestimentos");
INSERT INTO tb_categorias (ambiente, departamento) VALUES ("Cozinha", " Janelas E Portas");
INSERT INTO tb_categorias (ambiente, departamento) VALUES ("Lâmpada Led", "Iluminação");
INSERT INTO tb_categorias (ambiente, departamento) VALUES ("Pá", "Ferramentas");

-- CRIAR TABELA FILHA
create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal (8, 2) not null,
quantidade decimal (8, 2) not null,
medida varchar (255) not null,
primary key (id),
categorias_id bigint not null,
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, preco, quantidade, medida, categorias_id) VALUES ("Gabinete", 200, "2", "1.20 metros", 2);
INSERT INTO tb_produtos (nome, preco, quantidade, medida, categorias_id) VALUES ("Lampada", 10, 20, "unidade", 3);
INSERT INTO tb_produtos (nome, preco, quantidade, medida, categorias_id) VALUES ("Porta de Aluminío", 350, 4, "2.10 metros", 2);
INSERT INTO tb_produtos (nome, preco, quantidade, medida, categorias_id) VALUES ("Caixa dagua", 490, 2, "1000 litros", 4);
INSERT INTO tb_produtos (nome, preco, quantidade, medida, categorias_id) VALUES ("Chave de fenda", 11, 3, "16x5", 4);
INSERT INTO tb_produtos (nome, preco, quantidade, medida, categorias_id) VALUES ("Fio", 120, 30, "metros", 4);
INSERT INTO tb_produtos (nome, preco, quantidade, medida, categorias_id) VALUES ("Mosaico", 34, 50, "15x30 cm", 1);
INSERT INTO tb_produtos (nome, preco, quantidade, medida, categorias_id) VALUES ("Torneira", 90, 6, "unidade", 1);

-- SELEÇÃO > QUE 100
select * from tb_produtos;
select * from tb_categorias;

select * from tb_produtos WHERE preco > 100.00;

-- SELEÇÃO ENTRE 70 e 150
select * from tb_produtos WHERE nome BETWEEN 70 AND 150;

-- SELEÇÃO DE PRODUTOS COM A LETRA C 
select * from tb_produtos WHERE nome LIKE "%C%";

select * from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id
 where tb_categorias.ambiente = "Cozinha";

 






