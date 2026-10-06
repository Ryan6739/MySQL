create database freiDB1;
use freiDB1;

create table filme (
	id 			int primary key auto_increment,
    nome 		varchar(200),
    genero 		varchar(200),
    sinopse		varchar(4000),
    avaliacao	decimal(15,2),
    lancamento	date,
    disponivel	boolean,
    imagem 		varchar(800)
);

