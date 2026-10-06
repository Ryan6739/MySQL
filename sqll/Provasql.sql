create database lojaa;
use lojaa;

CREATE TABLE clientes(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cidade VARCHAR(50),
    estado CHAR(2),
    email VARCHAR(100)
);


CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    produto VARCHAR(100),
    valor DECIMAL(10,2),
    data_pedido DATE,
    status VARCHAR(30),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO clientes (nome, cidade, estado, email) VALUES
('Ana Souza', 'São Paulo', 'SP', 'ana@email.com'),
('Carlos Oliveira', 'Santos', 'SP', 'carlos@email.com'),
('Mariana Lima', 'Campinas', 'SP', 'mariana@email.com'),
('João Santos', 'São Paulo', 'SP', 'joao@email.com'),
('Fernanda Costa', 'Curitiba', 'PR', 'fernanda@email.com'),
('Ricardo Alves', 'Rio de Janeiro', 'RJ', 'ricardo@email.com'),
('Juliana Mendes', 'Santos', 'SP', 'juliana@email.com'),
('Pedro Rocha', 'Belo Horizonte', 'MG', 'pedro@email.com');

INSERT INTO pedidos
(id_cliente, produto, valor, data_pedido, status) VALUES
(1, 'Notebook Lenovo', 3500.00, '2026-08-01', 'Pago'),
(1, 'Mouse Logitech', 120.00, '2026-08-05', 'Pago'),
(2, 'Teclado Mecânico', 350.00, '2026-08-03', 'Pendente'),
(3, 'Monitor LG 24', 900.00, '2026-08-04', 'Pago'),
(4, 'Notebook Dell', 4200.00, '2026-08-07', 'Pago'),
(5, 'Impressora HP', 850.00, '2026-08-08', 'Pendente'),
(6, 'Mouse Logitech', 120.00, '2026-08-10', 'Cancelado'),
(7, 'Monitor Samsung', 1100.00, '2026-08-11', 'Pago'),
(2, 'Webcam Logitech', 280.00, '2026-08-12', 'Pago'),
(3, 'Notebook Acer', 3200.00, '2026-08-15', 'Pendente');



 --          Questões.


-- Liste o nome do cliente e o produto comprado.
	select
		clientes.nome,
			pedidos.produto
				from pedidos
					inner join clientes
						ON clientes.id_cliente = pedidos.id_cliente;


--     Questão 2 – Nome e valor

-- Liste o nome do cliente, o produto e o valor do pedido.
	select
		clientes.nome,
			pedidos.produto,
				pedidos.valor
					from pedidos
						inner join clientes
							ON clientes.id_cliente = pedidos.id_cliente;

-- Ordene os resultados pelo valor do pedido em ordem crescente.
	select
		clientes.nome,
			pedidos.produto,
				pedidos.valor
					from pedidos
						inner join clientes
							ON clientes.id_cliente = pedidos.id_cliente
                            Order by valor;

--     Questão 3

-- Liste o nome do cliente, produto e valor somente dos pedidos com valor maior que R$ 1.000,00.
	select
		clientes.nome,
			pedidos.produto,
				pedidos.valor
					from pedidos
						inner join clientes
							ON clientes.id_cliente = pedidos.id_cliente
                            where valor > 1000;

--     Questão 4

-- Liste o nome dos clientes e os produtos dos pedidos que possuem status "Pago".
	select
		clientes.nome,
			pedidos.produto,
				pedidos.status
					from pedidos
						inner join clientes
							ON clientes.id_cliente = pedidos.id_cliente
                            where status = "Pago";

-- Questão 5

-- Liste o nome do cliente e o produto dos clientes cujo nome começa com a letra "A".
	select
		clientes.nome,
			pedidos.produto
					from pedidos
						inner join clientes
							ON clientes.id_cliente = pedidos.id_cliente
                            where nome like "A%";


-- Questão 6

-- Liste o nome dos clientes e os produtos que possuem a palavra "Logitech" no nome do produto.
	select
		clientes.nome,
			pedidos.produto
					from pedidos
						inner join clientes
							ON clientes.id_cliente = pedidos.id_cliente
                            where produto like "%Logitech%";


-- Questão 7

-- Liste o nome do cliente, cidade e produto dos clientes que moram nos estados:SP PR RJ
	select
		clientes.nome,
			clientes.cidade,
				pedidos.produto,
					clientes.estado
						from pedidos
							inner join clientes
								ON clientes.id_cliente = pedidos.id_cliente
								where estado in ("SP","PR","RJ");


-- Questão 8

-- Liste o nome do cliente, produto e status dos pedidos cujo status seja:
-- Pago
-- Pendente
	select
		clientes.nome,
			pedidos.produto,
				pedidos.status
					from pedidos
						inner join clientes
							ON clientes.id_cliente = pedidos.id_cliente
                            where status in ("Pago", "Pendente");


-- Questão 9 

-- Liste o nome do cliente, produto e valor dos pedidos cujo valor esteja entre R$ 500,00 e R$ 3.500,00.
	select
		clientes.nome,
			pedidos.produto,
				pedidos.valor
					from pedidos
						inner join clientes
							ON clientes.id_cliente = pedidos.id_cliente
                            where valor between 500 and 3500;



-- Questão 10 

-- Liste o nome do cliente e o produto dos pedidos realizados por clientes que moram em uma cidade cujo nome começa com "S".
	select
		clientes.nome,
			clientes.cidade,
				pedidos.produto
						from pedidos
							inner join clientes
								ON clientes.id_cliente = pedidos.id_cliente
								where cidade like "S%";
-- Utilize:


-- Questão 11

-- Liste:

-- nome do cliente;
-- estado;
-- produto;
-- valor.

-- Mostre somente pedidos:

-- com valor superior a R$ 300,00;
-- com status "Pago";
-- de clientes dos estados SP ou PR.

	select
		clientes.nome,
			clientes.estado,
					pedidos.produto,
						pedidos.valor
							from pedidos
								inner join clientes
									ON clientes.id_cliente = pedidos.id_cliente
									where valor > 300 and status = "Pago" and estado = "SP" or "PR";


-- Questão 12 

-- Liste o nome do cliente e o produto para clientes que:

-- moram em São Paulo ou Santos;
-- possuem a letra "a" no nome.

	select
		clientes.nome,
			clientes.cidade,
				pedidos.produto
						from pedidos
							inner join clientes
								ON clientes.id_cliente = pedidos.id_cliente
								where cidade = "São Paulo" or "Santos" and nome like "A%";


-- Questão 13

-- Liste o nome do cliente, produto, valor e status de todos os pedidos.

-- Ordene:

-- primeiro pelo status em ordem alfabética;
-- depois pelo valor, do maior para o menor.
	select
		clientes.nome,
				pedidos.produto,
					pedidos.valor,
						pedidos.status
							from pedidos
								inner join clientes
									ON clientes.id_cliente = pedidos.id_cliente
									order by status; -- -----------------------------------------

-- Questão 14 – Desafio

-- Liste o nome do cliente, cidade, produto e valor dos pedidos que:

-- possuem "Notebook" no nome do produto;
-- possuem valor superior a R$ 3.000,00;
-- foram realizados por clientes dos estados SP ou MG.
	select
		clientes.nome,
			clientes.cidade,
				pedidos.produto,
					clientes.estado,
						pedidos.valor
							from pedidos
								inner join clientes
									ON clientes.id_cliente = pedidos.id_cliente
									where produto like "%Notebook%" and valor > 3000 and estado in ("SP", "MG");


-- Questão 15 – Desafio final 

-- Crie uma consulta que apresente:

-- nome do cliente;
-- cidade;
-- estado;
-- produto;
-- valor;
-- status.

-- A consulta deverá retornar somente pedidos que:

-- sejam de clientes de SP, RJ ou MG;
-- tenham valor entre R$ 100,00 e R$ 4.000,00;
-- tenham status Pago ou Pendente;
-- e cujo produto contenha a palavra "Notebook" ou "Monitor".


-- Ordene o resultado pelo valor do pedido do maior para o menor.

	select
		clientes.nome,
			clientes.cidade,
				pedidos.produto,
					clientes.estado,
						pedidos.valor,
							pedidos.status
								from pedidos
									inner join clientes
										ON clientes.id_cliente = pedidos.id_cliente
										where estado in ("SP", "RJ", "MG")    and 
                                        valor between 100 and 4000    and
                                        status in ("Pago", "Pendente")    and 
                                        produto like "%Notebook%" or "%Monitor%";