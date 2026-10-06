use rian;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL
);



CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);



INSERT INTO clientes (nome, cidade)
VALUES
('João', 'São Paulo'),
('Maria', 'Curitiba'),
('Carlos', 'Rio de Janeiro'),
('Ana', 'São Paulo'),
('Pedro', 'Campinas'),
('Fernanda', 'Curitiba'),
('Lucas', 'Santos'),
('Juliana', 'São Paulo');


INSERT INTO pedidos (produto, valor, id_cliente)
VALUES
('Notebook', 3500.00, 1),
('Mouse', 80.00, 1),
('Teclado', 150.00, 2),
('Monitor', 900.00, 3),
('Impressora', 1200.00, 4),
('Webcam', 250.00, 2),
('Headset', 300.00, 5),
('Celular', 2500.00, 6),
('Tablet', 1800.00, 7),
('Pen Drive', 60.00, 8),
('Cadeira', 700.00, 4),
('HD Externo', 450.00, 3);



SELECT
    clientes.nome,
    pedidos.produto
FROM clientes
INNER JOIN pedidos
ON clientes.id_cliente = pedidos.id_cliente;






-- 1. Liste o nome do cliente e o produto comprado.
	select 
     clientes.nome,
		pedidos.produto
			FROM clientes
				INNER JOIN pedidos
					ON clientes.id_cliente = pedidos.id_cliente;

-- 2. Liste o nome do cliente, o produto e o valor do pedido.
	select
		clientes.nome,
			pedidos.produto,
				pedidos.valor
                from clientes
					inner join pedidos
						on clientes.id_cliente = pedidos.id_pedido;


-- 3. Liste o nome do cliente, a cidade e o produto comprado.
	select
		clientes.nome,
			clientes.cidade,
				pedidos.produto
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_pedido;


-- 4. Liste o nome do cliente, o produto e a cidade do cliente.
	select
		clientes.nome,
			pedidos.produto,
				clientes.cidade
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_pedido;


-- 5. Liste os produtos comprados pelo cliente João.
	select
		clientes.nome,
			pedidos.produto
				from clientes
                inner join pedidos
					ON clientes.id_cliente = pedidos.id_pedido;
                    


-- 6. Liste os pedidos realizados por clientes de São Paulo, mostrando o nome do cliente, o produto e a cidade.
	select
		clientes.nome,
			pedidos.produto,
				clientes.cidade
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_pedido;


-- 7. Liste os pedidos com valor maior que 500, mostrando o nome do cliente, o produto e o valor.
	select
		clientes.nome,
			pedidos.produto,
				pedidos.valor
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_pedido
                            where valor > 500;


-- 8. Liste os pedidos com valor menor que 500, mostrando o nome do cliente, o produto e o valor.
	select
		clientes.nome,
			pedidos.produto,
				pedidos.valor
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_pedido
                            where valor < 500;

-- 9. Liste os pedidos com valor entre 100 e 1000, mostrando o nome do cliente, o produto e o valor.
	select
		clientes.nome,
			pedidos.produto,
				pedidos.valor
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_pedido
                            where valor between 100 and 1000;
 
-- 10. Liste os clientes de Curitiba e seus respectivos pedidos.
	select
		clientes.nome,
			pedidos.produto,
				clientes.cidade
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_pedido
							where cidade = "Curitiba";

-- 11. Liste o nome do cliente, o produto e o valor, ordenando os pedidos pelo valor do maior para o menor.
	select
		clientes.nome,
			pedidos.produto,
				pedidos.valor
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_pedido
                            order by valor desc;


-- 12. Liste o nome do cliente, o produto e o valor, ordenando pelo nome do cliente em ordem alfabética.
	select
		clientes.nome,
			pedidos.produto,
				pedidos.valor
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_pedido
                            order by nome;


-- 13. Liste os pedidos dos clientes de São Paulo com valor maior que 500.
	select
		clientes.nome,
			pedidos.produto,
				clientes.cidade,
					pedidos.valor
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_pedido
							where cidade = "São Paulo" and valor > 500;
                            
                            
-- 14. Liste os clientes que compraram Notebook, Celular ou Tablet, mostrando o nome, produto e valor.
		select
		clientes.nome,
			pedidos.produto,
				pedidos.valor
					from clientes
						inner join pedidos
							ON clientes.id_cliente = pedidos.id_pedido
							where produto = "Notebook" or produto = "Celular" or produto = "Tablet";


-- 15. Liste o nome do cliente, cidade, produto e valor dos pedidos com valor maior que 200, somente para clientes de São Paulo ou Curitiba,
-- ordenando pelo valor do maior para o menor.
	select
		clientes.nome,
			clientes.cidade,
				pedidos.produto,
					pedidos.valor
						from clientes
							inner join pedidos
								ON clientes.id_cliente = pedidos.id_pedido
                                where valor > 200 and cidade = "São Paulo"
                                order by valor desc;
							

