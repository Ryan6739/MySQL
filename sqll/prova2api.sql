create database LivrariA12;
use LivrariA12;

create table livros(
	id int primary key auto_INCREMENT,
	nome varchar(200),
    lancamento date,
    preco decimal(10,2),
    genero varchar(100),
    numero_paginas int
);

