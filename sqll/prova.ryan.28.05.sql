use rian;

create table clientes(
	id int primary key auto_increment,
	nome varchar(100),
    email varchar(100),
    cidade varchar(100),
    data_cadastro date
);

drop table clientes;

create table produtos(
	nome varchar(100),
    estoque int,
	preco decimal(10,2)
);

-- Insira 5 clientes diferentes na tabela clientes, com nome, e-mail, cidade e data de cadastro.
   
   insert into clientes (nome, email, cidade, data_cadastro)
   values
	("Robert","Dualjunior35@gmail.com","Barcelona","2022-08-16"),
    ("Walter","Stridermosqui@gmail.com","Florida","2000-12-27"),
    ("Cabral","PedroBrasil15@gmail.com","Miami","2007-10-17"),
    ("Davi","Goliaspedra@gmail.com","Orlando","2010-05-01"),
    ("Larissa","Alarisssinha2000@hot.mail","São Paulo","2026-01-20");

-- Insira 5 produtos na tabela produtos, variando preço e quantidade em estoque.

	insert into produtos(nome, estoque, preco)
    values
    ("Monitor", 20 , 1299.99 ),
    ("Desodorente", 16 , 23.99 ),
    ("Fone de ouvido", 40 , 39.99 ),
    ("Corrente de Bicicleta", 9 , 999.99 ),
    ("Televisão", 18 , 3397.99 );

-- Adicione mais 2 clientes de uma cidade que ainda não existe na tabela.
	
    insert into clientes (nome, email, cidade, data_cadastro)
   values
	("Ruan","Ruan3891@gmail.com","Rio de janeiro","2021-02-11"),
    ("Victor","Vitinhotv290@gmail.com","Sobral","1999-01-05");

-- Crie uma nova coluna telefone na tabela clientes (use ALTER TABLE) e insira valores para os clientes já cadastrados (use UPDATE).
	
    Alter table clientes add telefone varchar(9);
    
    update clientes 
    set telefone = '443388975'
    where id in (7) ;

-- READ (Consulta de dados)

	select * from clientes;
    select * from produtos;

-- Liste todos os clientes cadastrados, ordenados por nome em ordem alfabética.
	
    select * from clientes
    order by nome;

-- Liste todos os produtos cadastrados, ordenados do mais caro para o mais barato.
	
    select * from produtos
    order by preco desc;

-- Liste os produtos com preço maior que R$ 50,00.
	
	select * from produtos
    where preco > 50;

-- Liste os clientes cadastrados depois de uma data específica (use WHERE com data_cadastro).

	select * from clientes
    where data_cadastro > "2008-03-20";

-- Conte quantos clientes existem de cada cidade (use GROUP BY).
	
	select cidade, count(*) from clientes
    group by cidade;

-- Encontre o produto mais caro e o mais barato da tabela produtos (use MAX() e MIN()).


-- Liste os produtos com estoque abaixo de 10 unidades.


-- UPDATE (Atualização de dados)


-- Atualize o preço de um produto específico, aumentando-o em 10%.


-- Corrija o e-mail de um cliente específico.


-- Atualize a cidade de um cliente específico.


-- DELETE (Exclusão de dados)


-- Exclua um produto específico pelo seu id.
