create database if not exists floricultura; 
use floricultura;

create table if not exists endereco(id int not null primary key auto_increment, rua varchar(45) not null, bairro varchar(45) not null, cidade varchar(45) not null, estado varchar(45) not null,  numero varchar(45) not null,  complemento varchar(45) not null);

create table if not exists usuario(id int not null primary key auto_increment, nome varchar(45) not null, senha varchar(45) not null,
 id_endereco int not null,
 foreign key fk_id_endereco(id_endereco) references endereco(id));
 
 create table if not exists produto(id int not null primary key auto_increment, nome varchar(45) not null, descricao varchar(45) not null, preco float not null, imagem blob, quantidade_estoque int not null);
 
create table if not exists historico_compras(id int not null primary key auto_increment, valor_total varchar(45) not null, data_compra date not null);

create table if not exists produtos_has_historico_compras(id_produto int not null, quantidade int, id_historico_compras int not null, 
foreign key fk_id_produto(id_produto) references produto(id),
foreign key fk_id_historico_compras(id_historico_compras) references historico_compras(id));


 
