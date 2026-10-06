use rian;


CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    livro VARCHAR(100),
    genero VARCHAR(50),
    cliente VARCHAR(50),
    quantidade INT,
    preco DECIMAL(10,2),
    cidade VARCHAR(50),
    data_pedido DATE
);


INSERT INTO pedidos (livro, genero, cliente, quantidade, preco, cidade, data_pedido)
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



#Exercícios SQL - Tabela PEDIDOS
#1. Listar os livros com preço entre R$ 50 e R$ 80.
-- Utilize BETWEEN
select *
from pedidos
where preco between 50 and 80;


#2. Mostrar todos os pedidos realizados na cidade de São Paulo.
-- Utilize WHERE
select *
from pedidos where cidade = 'São Paulo';


#3. Exibir os livros do gênero Fantasia com preço superior a R$ 60.
-- Utilize WHERE e AND
select *
from pedidos where genero = 'Fantasia' and preco > 60;


#4. Mostrar os pedidos realizados entre os dias 05/03/2026 e 12/03/2026.
-- Utilize BETWEEN para datas
select * from pedidos where data_pedido between '2026-03-05' and '2026-03-12';


#5. Listar os clientes que compraram mais de 2 livros em um único pedido.
-- Utilize WHERE
select *
from pedidos where quantidade > 2;


#6. Exibir a quantidade total de livros vendidos por cliente.
-- Utilize GROUP BY e SUM
select cliente, sum(quantidade) 
from pedidos group by cliente;


#7. Mostrar apenas os clientes que compraram mais de 5 livros no total.
-- Utilize GROUP BY e HAVING
select cliente, sum(quantidade)
from pedidos group by cliente having count(quantidade > 5);


#8. Calcular a média de preço dos livros por gênero.
-- Utilize GROUP BY e AVG
select genero, round(avg(preco),2)
from pedidos group by genero;


#9. Mostrar apenas os gêneros cuja média de preço seja maior que R$ 60.
-- Utilize GROUP BY e HAVING
select genero, round(avg(preco),2) as conts
from pedidos group by genero having conts > 60;


#10. Exibir o faturamento total por cidade.
-- Utilize SUM(QUANTIDADE * PRECO)
select cidade, sum(quantidade * preco)
from pedidos group by cidade;


#11. Mostrar apenas as cidades cujo faturamento ultrapasse R$ 500.
-- Utilize GROUP BY e HAVING
select cidade, sum(quantidade * preco) as m 
from pedidos group by cidade having m > 500;


#12. Contar quantos pedidos foram realizados por gênero.
-- Utilize COUNT e GROUP BY
select genero, count(data_pedido) 
from pedidos group by genero; 


#13. Mostrar apenas os gêneros com mais de 3 pedidos registrados.
-- Utilize HAVING
select genero, count(data_pedido) as n
from pedidos group by genero having n >3;


#14. Exibir o maior preço de livro de cada gênero.
-- Utilize MAX e GROUP BY
select genero, max(preco)
from pedidos group by genero;


#15. Mostrar os clientes cujo gasto total esteja entre R$ 400 e R$ 600.
-- Utilize SUM, GROUP BY e HAVING com BETWEEN
select cliente, sum(quantidade * preco) as a
from pedidos group by cliente having a between 400 and 600;


#Desafio Extra
#16. Exibir:
# Cliente
# Quantidade total comprada
# Valor total gasto
#Mostrando apenas clientes que:
# Compraram mais de 5 livros;
# Gastaram mais de R$ 450;
#Ordene do maior gasto para o menor.

select cliente, sum(quantidade) as b, sum(quantidade * preco) as l
from pedidos 
group by cliente having b > 5 and l > 450
order by l desc;

