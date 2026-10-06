create database ui;
use ui;

CREATE TABLE pedidos2 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    livro VARCHAR(100),
    genero VARCHAR(50),
    cliente VARCHAR(50),
    quantidade INT,
    preco DECIMAL(10,2),
    cidade VARCHAR(50),
    data_pedido DATE
);


INSERT INTO pedidos2 (livro, genero, cliente, quantidade, preco, cidade, data_pedido)
VALUES
('Dom Casmurro', 'Romance', 'Ana', 2, 45.00, 'São Paulo', '2026-03-01'),
('1984', 'Ficção', 'Carlos', 1, 60.00, 'Rio de Janeiro', '2026-03-02'),
('O Hobbit', 'Fantasia', 'Julia', 3, 75.00, 'Curitiba', '2026-03-03'),
('A Revolução dos Bichos', 'Ficção', 'Marcos', 2, 40.00, 'Campinas', '2026-03-04'),
('Harry Potter', 'Fantasia', 'Ana', 1, 90.00, 'São Paulo', '2026-03-05'),
('Percy Jackson', 'Fantasia', 'Carlos', 4, 55.00, 'Rio de Janeiro', '2026-03-06'),
('It: A Coisa', 'Terror', 'Julia', 2, 80.00, 'Curitiba', '2026-03-07'),
('Drácula', 'Terror', 'Marcos', 1, 50.00, 'Campinas', '2026-03-08'),
('Orgulho e Preconceito', 'Romance', 'Ana', 5, 35.00, 'São Paulo', '2026-03-09'),
('O Iluminado', 'Terror', 'Carlos', 2, 70.00, 'Rio de Janeiro', '2026-03-10'),
('Senhor dos Anéis', 'Fantasia', 'Julia', 1, 120.00, 'Curitiba', '2026-03-11'),
('Verity', 'Suspense', 'Marcos', 3, 65.00, 'Campinas', '2026-03-12'),
('Código Da Vinci', 'Suspense', 'Ana', 2, 58.00, 'São Paulo', '2026-03-13'),
('A Cabana', 'Drama', 'Carlos', 1, 48.00, 'Rio de Janeiro', '2026-03-14'),
('Coraline', 'Fantasia', 'Julia', 2, 52.00, 'Curitiba', '2026-03-15');



-- EXERCÍCIOS


-- 1.
-- Liste todos os livros e preços em ordem crescente de preço.



-- 2.
-- Liste os clientes em ordem alfabética.


-- 3.
-- Mostre o maior preço cadastrado na tabela.
select max(preco) as maior_preco
from pedidos2;  


-- 4.
-- Mostre o menor preço cadastrado.
select min(preco) as menor_preco
from pedidos2;


-- 5.
-- Calcule a média de preços dos livros.
select avg(preco) as média
from pedidos2;


-- 6.
-- Mostre a soma total das quantidades vendidas.
select sum(quantidade) as p 
from pedidos2;


-- 7.
-- Conte quantos pedidos foram realizados.
select cont(quantidade) as b
from pedidos2;


-- 8.
-- Liste a quantidade total comprada por cliente usando GROUP BY.
select sum(quantidade) as t 
from pedidos2 quantidade group by clientes;


-- 9.
-- Mostre o valor médio dos livros por gênero.
select avg(preco) as média
from pedidos2;


-- 10.
-- Liste o maior preço de livro por gênero.
select max(preco) as maior_preco 
from pedidos2;


-- 11.
-- Mostre quantos pedidos cada cidade realizou.
select cont(quantidade) as coisa
from pedidos2 quantidade group by cidade;


-- 12.
-- Liste o total arrecadado por cliente usando:
-- SUM(quantidade * preco)
-- Ordene do maior para o menor valor arrecadado.
select sum(quantidade * preco) as amem 
from pedidos2 group by clientes;


-- 13.
-- Mostre a quantidade total vendida de cada livro.


-- 14.
-- Liste os gêneros e o total de livros vendidos em cada um,
-- ordenando da maior para a menor quantidade.


-- 15.
-- Mostre a média de preços dos livros por cidade
-- e ordene pelo maior valor médio.




-- 16.
-- Liste todos os livros com preço maior que 60.


-- 17.
-- Mostre os pedidos realizados na cidade de São Paulo.


-- 18.
-- Liste os livros do gênero Fantasia.


-- 19.
-- Mostre os pedidos realizados entre '2026-03-05' e '2026-03-12'.


-- 20.
-- Liste os livros com preço entre 50 e 80.

