use rian;

create table produtos (
id int auto_increment primary key,
nome varchar (100),
preco decimal(10,2),
estoque int,
categoria varchar (100),
marca varchar(100)
);

INSERT INTO produtos (nome, preco, estoque, categoria, marca) VALUES
('PlayStation 5', 4499.90, 12, 'Games', 'Sony'),
('Xbox Series X', 4299.00, 8, 'Games', 'Microsoft'),
('Notebook Inspiron 15', 3799.99, 15, 'Informática', 'Dell'),
('Teclado Mecânico RGB', 299.90, 40, 'Informática', 'Redragon'),
('Monitor UltraWide 29"', 1299.50, 10, 'Eletrônica', 'LG'),
('Smart TV 55 4K', 2899.00, 7, 'Eletrônica', 'Samsung'),
('Mouse Gamer Wireless', 249.99, 35, 'Games', 'Logitech'),
('Headset Bluetooth', 199.90, 25, 'Áudio', 'JBL'),
('Impressora Multifuncional', 899.00, 9, 'Informática', 'HP'),
('Smartphone Galaxy S24', 5399.90, 14, 'Celulares', 'Samsung'),
('Cadeira Gamer', 1499.00, 6, 'Móveis', 'ThunderX3'),
('Tablet iPad Air', 4799.00, 11, 'Eletrônica', 'Apple'),
('SSD NVMe 1TB', 549.90, 50, 'Informática', 'Kingston'),
('Controle Sem Fio DualSense', 399.90, 20, 'Games', 'Sony');



-- 1.Liste todos os produtos.
select * from produtos;


-- 2.Mostre apenas o nome e o preço dos produtos.
select nome, preco from produtos;


-- 3.Liste os produtos com preço maior que 100.
select * from produtos
where preco >100;


-- 4. Mostre os produtos com estoque menor que 10.
select * from produtos
where estoque <10;


-- 5.Liste os produtos da categoria "Eletrônicos".
select * from produtos
where categoria = 'Eletrônica';


-- 6. Mostre os produtos da marca Samsung.
select * from produtos
where marca = 'Samsung';


-- 7.Liste os produtos com preço entre 50 e 500.
select * from produtos 
where preco between 50 and 500;


-- 8. Mostre os produtos cujo estoque seja igual a 0 ou menor que 5
select * from produtos
where preco = 0 or preco < 5;



-- 9.Liste os produtos da categoria "Informática" e da marca Dell.
select * from produtos 
where categoria = 'Informática' and marca = 'Dell';

 


-- 10. Mostre os produtos que pertencem às categorias: Eletrônicos, Informática e Games
select * from produtos
where categoria in ('Eletrônica', 'Informática', 'Games'); 


-- 11. Liste os produtos cujo nome começa com a letra "M".
select * from produtos
where nome like 'M%';
 


-- 12 Mostre os produtos cujo nome termina com "Pro".
select * from produtos
where nome like '%Pro';
 


-- 13. Liste os produtos que possuem a palavra "Note" no nome.
select * from produtos
where nome like '%Note%';
 


-- 14.Mostre os produtos com preço maior que 1000 e estoque maior que 3.
select * from produtos
where preco > 1000 and estoque > 3;
 


-- 15.Liste os produtos da marca LG ou Samsung.
select * from produtos
where marca = 'LG' or marca = 'Samsung';