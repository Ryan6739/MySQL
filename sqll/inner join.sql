use rian;

create table filme(
  id int primary key auto_increment,
  nome_filme varchar(100),
  gene_filme varchar(30)
);

create table atores_filme(
	id_ator int primary key auto_increment,
    Nome_at varchar(100),
    constraint id_filme Foreign key (id_ator)
    References filme(id)
);

Insert into filme(nome_filme, gene_filme)
value
('O Poderoso Chefão', 'Drama'),
('Interestelar', 'Ficção Científica'),
('O Senhor dos Anéis', 'Fantasia'),
('Matrix', 'Ficção Científica'),
('Pulp Fiction', 'Crime'),
('Forrest Gump', 'Drama'),
('Vingadores: Ultimato', 'Ação'),
('O Rei Leão', 'Animação'),
('Titanic', 'Romance'),
('Jurassic Park', 'Aventura');

INSERT INTO atores_filme (nome_at) 
VALUES
('Tom Hanks'),
('Leonardo DiCaprio'),
('Keanu Reeves'),
('Robert Downey Jr.'),
('Chris Evans'),
('Morgan Freeman'),
('Christian Bale'),
('Johnny Depp'),
('Brad Pitt'),
('Emma Watson');

 Select * from
	atores_filme
		inner join filme
			ON atores_filme.id_ator=filme.id;


