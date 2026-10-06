use rian;

create table pessoa(
	id int primary key auto_increment,
	nome varchar(100),
    idade int
);

create table telefone(
	id_telefone int primary key auto_increment,
	telefone varchar(20),
    constraint id_nome foreign key (id_telefone)
		references pessoa(id)
);
Insert into pessoa(nome, idade)
values
('João Silva', 25),
('Maria Oliveira', 32),
('Carlos Santos', 18),
('Ana Souza', 27),
('Pedro Costa', 41),
('Juliana Almeida', 22),
('Lucas Pereira', 35),
('Beatriz Lima', 29),
('Rafael Martins', 45),
('Camila Rodrigues', 19);

Insert into telefone(telefone)
values
(11987654321),
(11976543210),
(11965432109),
(11954321098),
(11943210987),
(11932109876),
(11921098765),
(11910987654),
(11999887766),
(11988776655);

select * from
	telefone
		inner join pessoa
			ON telefone.id_telefone=pessoa.id;