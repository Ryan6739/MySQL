CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT
);

CREATE TABLE produtos1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    salario DECIMAL(10,2)
);

INSERT INTO clientes (nome, idade) VALUES 
('Ana Claudia', 28),
('Maria Oliveira', 34),
('Carlos Souza', 22),
('Ana Pereira', 41),
('Lucas Santos', 30),
('Rian Ryan Silva', 30);

INSERT INTO produtos1 (nome, preco) VALUES 
('Notebook', 3500.00),
('Smartphone', 2200.50),
('Teclado Mecânico', 450.99),
('Mouse Gamer', 199.90),
('Monitor 24 Polegadas', 899.00),
('Headset', 299.99),
('Webcam HD', 150.75);

INSERT INTO funcionarios (nome, salario) VALUES
('João Almeida', 2500.00),
('Mariana Costa', 3200.50),
('Pedro Santos', 2800.75),
('Fernanda Lima', 4100.00),
('Carlos Pereira', 3600.90),
('Juliana Rocha', 2900.30);


-- 1.Verifique se um salário é classificado como "Alto", "Médio" ou "Baixo", de acordo com seu valor.
set @wee = 1500;
select if (@wee > 2500, 'alto',
	   if (@wee >= 1500, 'medio', 'baixo')) as classificacao; 


-- 2.Verifique se uma pessoa é maior ou menor de idade com base na idade informada.
set @idd = 19;
select if( @idd >18, 'Maior', 'menor');

-- 3.Verifique se o preço de um produto é considerado caro ou barato.
set @prc = 1500;
select if (@prc > 1700, 'caro', 'barato') as consideração;

-- 4.Classifique um número como positivo, negativo ou zero.
set @num = 0;
select if (@num > 0, 'positivo',
	   if ( @num < 0,'negativo', 'zero')) as numero;

-- 5.Calcule o salário com bônus, aplicando uma porcentagem diferente dependendo do valor do salário.
set @sal = 400;
set @salf = (@sal * 1.20);
set @salf2 = (@sal * 1.50);
select if( @sal > 2500, @salf, @salf2) as ffd;


-- 6.Verifique se um cliente pode realizar uma compra com base na idade e no saldo disponível.
set @idade = 18;
set @dindin = 270;
select if ( @idade >= 18 and @dindin > 260, 'saldo disponivel', 'não será possivel comprar') as vf;

-- 7.Verifique se um produto está em promoção com base no preço.
set @pr = 150;
select if ( @pr >= 150, 'nao esta em promocao', 'esta em promo') as promo;

-- 8.Classifique uma nota em categorias (A, B, C ou D) de acordo com seu valor.
set @nota = 9.5;
select if ( @nota > 9, 'A',
       if ( @nota > 7, 'B',
       if ( @nota > 5, 'C', 'D' ))) as notinhas;

-- 9.Verifique se um número é múltiplo de 5.
set @num = 10;
select if ( @num % 5 = 0, 'e multiplo de 5', 'nao e multiplo de 5') as multi;

-- 10.Compare dois valores e identifique qual é o maior.
set @r = 57;
set @s = 60;
select if ( @r > @s, @r, @s ) as lores;