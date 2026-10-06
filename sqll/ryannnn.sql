use rian;

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



select  count(salario) from funcionarios;
select  sum(salario) from funcionarios AS Soma_salarios;

Select max(salario) from funcionarios As Maior_salario;
Select min(salario) from funcionarios As Menor_salario;



-- 1. Crie uma variável @nome e atribua seu nome. Exiba o valor.
set @nome = 'Ana Claudia';
select * from clientes
where nome = @nome;

-- 2. Crie uma variável @idade com valor 20 e exiba.
set @idade = 34;
select * from clientes
Where idade = @idade;

-- 3. Crie uma variável @numero e mostre o dobro.
set @numero =22;
select @numero * 2 as dobro;

-- 4. Crie duas variáveis @a e @b e mostre a soma.
set @a = 30;
set @b = 20;
select @a + @b as soma;

-- 5. Crie duas variáveis e mostre a subtração.
set @c = 25;
set @d = 15;
select @c - @d as menos;

-- 6. Crie duas variáveis e mostre a multiplicação.

-- 7. Crie duas variáveis e mostre a divisão.
set @e = 40;
set @f = 29;
select @e / @f;

-- 8. Atribua valor 100 a uma variável usando SELECT.
set @v = 2;
select @v + 100 as jjk;

-- 9. Atribua o resultado de 10 + 5 a uma variável.
set @g = 10 + 5;
select @g;

-- 10. Atribua o resultado de uma multiplicação a uma variável.
set @h = 67/9;
select @h;

-- 11. Armazene o maior preço da tabela produtos em uma variável.
Select max(preco) from produtos1 As Maior;

-- 12. Armazene o menor preço da tabela produtos.
select min(preco) from produtos1 as menor;

-- 13. Armazene a média de preços dos produtos.
select avg(preco) from produtos1 as média;

-- 14. Armazene o total de produtos cadastrados.
select count(*) from produtos1;

-- 15. Armazene o maior salário da tabela funcionarios.
select max(salario) as maior_dindin from funcionarios ;

-- 16. Armazene o menor salário da tabela funcionarios.
select min(salario) as menor_dindin from funcionarios;

-- 17. Armazene a média salarial dos funcionarios.
select avg(salario) as meio_dindin from funcionarios;

-- 18. Crie uma variável com valor 100 e mostre produtos com preço maior.
set @ga = 100;
select * from produtos1
where preco > @ga ;

-- 19. Crie uma variável com valor 2000 e mostre funcionarios com salário maior.
set @valor = 2000;
select salario from funcionarios
where salario > @valor;

-- 20. Crie uma variável com ID e busque um cliente.
set @id= 8;
select * from clientes
where id = @id;

-- 21. Crie uma variável com nome e filtre produtos.
set @nm = 'win word';
select * from produtos1
where nome = @nm;

-- 22. Crie uma variável @desconto e aplique desconto nos produtos.
set @desco = 0.15;
select nome, preco, round ( preco - (preco * @desco)) from produtos1; 

-- 23. Crie uma variável @aumento e aplique nos salários.
set @aumento = 1.90;
select nome, salario, round(salario + (salario * @aumento)) from funcionarios;

-- 24. Use variável para somar com uma coluna.
set @ngg = (select sum(salario) from funcionarios);
select @ngg;

-- 25. Use variável para multiplicar uma coluna.
set @mult = 4;
select preco * @mult from produtos1;

-- 26. Use IF com variável para mostrar "Alto" se valor > 100.
set @va = 200;
select if (@va > 100, 'Alto','Baixo') as stats;

-- 27. Use IF para verificar se número é par ou ímpar.
set @fd = 4;
select if (@fd % 2 = 0,'par','impar') as pi;

-- 28. Use IF para mostrar "Aprovado" se nota >= 6.
set @ff = 10;
select if (@ff > 6, 'aprovado', 'reprovado') as stats;

-- 29. Crie uma variável acumuladora para somar preços.
set @tota = 0;
select @tota := @tota + preco as frr from produtos1;
