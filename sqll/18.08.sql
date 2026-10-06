CREATE DATABASE INNER18;
USE INNER18;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100),
    estado VARCHAR(2)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    produto VARCHAR(100),
    categoria VARCHAR(50),
    valor DECIMAL(10,2),
    data_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);


INSERT INTO clientes (id_cliente, nome, cidade, estado) VALUES
(1, 'Ana Silva', 'São Paulo', 'SP'),
(2, 'Bruno Souza', 'Campinas', 'SP'),
(3, 'Carla Oliveira', 'Santos', 'SP'),
(4, 'Diego Santos', 'Rio de Janeiro', 'RJ'),
(5, 'Elisa Costa', 'Belo Horizonte', 'MG'),
(6, 'Felipe Lima', 'Curitiba', 'PR'),
(7, 'Gabriela Alves', 'São Paulo', 'SP'),
(8, 'Henrique Rocha', 'Salvador', 'BA');

INSERT INTO pedidos
(id_pedido, id_cliente, produto, categoria, valor, data_pedido) VALUES
(101, 1, 'Notebook', 'Informática', 3500.00, '2026-08-01'),
(102, 2, 'Mouse', 'Informática', 80.00, '2026-08-02'),
(103, 1, 'Teclado', 'Informática', 150.00, '2026-08-03'),
(104, 3, 'Monitor', 'Informática', 1200.00, '2026-08-04'),
(105, 4, 'Celular', 'Telefonia', 2500.00, '2026-08-05'),
(106, 5, 'Fone de ouvido', 'Áudio', 300.00, '2026-08-06'),
(107, 2, 'Webcam', 'Informática', 250.00, '2026-08-07'),
(108, 6, 'Smartwatch', 'Eletrônicos', 900.00, '2026-08-08'),
(109, 1, 'Impressora', 'Informática', 1800.00, '2026-08-09'),
(110, 7, 'Tablet', 'Eletrônicos', 2200.00, '2026-08-10'),
(111, 4, 'Carregador', 'Telefonia', 120.00, '2026-08-11'),
(112, 5, 'Caixa de som', 'Áudio', 450.00, '2026-08-12');



SELECT clientes.nome, pedidos.produto
FROM clientes
INNER JOIN pedidos
    ON clientes.id_cliente = pedidos.id_cliente;






-- -- -- -- Básico

-- 1. Mostre o nome do cliente e o produto comprado.
	select clientes.nome, pedidos.produto
    from clientes
    inner join pedidos
		ON clientes.id_cliente = pedidos.id_cliente;

-- 2. Mostre o nome do cliente, o produto e o valor do pedido.
	select 
		clientes.nome,
			pedidos.produto,
				pedidos.valor
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_cliente;

-- 3. Mostre o nome do cliente, a cidade e o produto comprado.
		select 
		clientes.nome,
			clientes.cidade,
				pedidos.produto
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_cliente;

-- 4. Mostre o nome do cliente e a data do pedido.
	select 
		clientes.nome,
			pedidos.data_pedido
				from clientes
					inner join pedidos
						ON clientes.id_cliente = pedidos.id_cliente;

-- 5. Mostre o nome do cliente, o produto e a categoria.
	select 
		clientes.nome,
			pedidos.produto,
				pedidos.categoria
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_cliente;

-- -- -- -- Intermediário


-- 6. Mostre apenas os clientes que compraram produtos com valor maior que R$ 1.000.
		select 
		clientes.nome,
			pedidos.produto,
				pedidos.valor
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_cliente
                            where valor > 1000;


-- 7. Mostre os clientes que compraram produtos da categoria Informática.
	select 
		clientes.nome,
			pedidos.produto,
				pedidos.categoria
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_cliente
                            Where categoria = "Informática";
    

-- 8. Mostre os pedidos realizados por clientes do estado de SP.
	select 
		clientes.nome,
			pedidos.produto,
				clientes.estado
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_cliente
                            where estado = "SP";
    

-- 9. Mostre o nome do cliente e o produto, ordenando pelo valor do pedido do maior para o menor.
	select 
		clientes.nome,
			pedidos.produto,
				pedidos.valor
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_cliente
                            order by valor desc;


-- 10. Mostre os clientes que compraram Notebook, Monitor ou Tablet.
	select 
		clientes.nome,
			pedidos.produto
				from clientes
					inner join pedidos
						ON clientes.id_cliente = pedidos.id_cliente
                        Where produto in ("Notebook", "Tablet", "Celular") ; 


-- 11. Mostre os clientes cujo nome começa com a letra A.
	select 
		clientes.nome
			from clientes
				inner join pedidos
					ON clientes.id_cliente = pedidos.id_cliente
                    Where nome like "A%";
                    

-- 12. Mostre os pedidos realizados entre os dias 01/08/2026 e 08/08/2026.
	select 
		pedidos.data_pedido
			from clientes
				inner join pedidos
					ON clientes.id_cliente = pedidos.id_cliente
						Where data_pedido between "2026-08-01" and "2026-08-08" ;


-- 13. Mostre o nome do cliente e o valor dos pedidos cujo valor esteja entre R$ 200 e R$ 1.000.
		select 
		clientes.nome,
			pedidos.produto,
				pedidos.valor
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_cliente
                            where valor between 200 and 1000;
    

-- 14. Mostre os clientes de São Paulo que fizeram pedidos acima de R$ 1.000.
	select 
		clientes.nome,
			pedidos.produto,
				clientes.cidade,
					pedidos.valor
						from clientes
							inner join pedidos
								ON clientes.id_cliente = pedidos.id_cliente
								where cidade = "São Paulo" and valor > 1000;


-- -- -- Desafio

-- 15. Mostre o nome do cliente e o total gasto por cada cliente.
	select 
		clientes.nome,
			sum(pedidos.valor)
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_cliente
							group by clientes.nome;
    

-- 16. Mostre o nome do cliente e a quantidade de pedidos realizados por ele.
	

-- 17. Mostre apenas os clientes que fizeram mais de um pedido.


-- 18. Mostre o cliente que realizou o pedido de maior valor.


-- 19. Mostre o total de vendas por categoria.


-- 20. Mostre o nome do cliente, cidade e total gasto, mas apenas para clientes que gastaram mais de R$ 1.000 no total.

