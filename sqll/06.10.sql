use rian;



CREATE TABLE departamentos (
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nome_departamento VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL
);


CREATE TABLE funcionarios (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    id_departamento INT,
    
    FOREIGN KEY (id_departamento)
        REFERENCES departamentos(id_departamento)
);


CREATE TABLE projetos (
    id_projeto INT PRIMARY KEY AUTO_INCREMENT,
    nome_projeto VARCHAR(100) NOT NULL,
    valor DECIMAL(12,2) NOT NULL,
    status VARCHAR(50) NOT NULL,
    id_departamento INT,

    FOREIGN KEY (id_departamento)
        REFERENCES departamentos(id_departamento)
);



INSERT INTO departamentos (nome_departamento, cidade) VALUES
('Recursos Humanos', 'São Paulo'),
('Financeiro', 'Campinas'),
('Marketing', 'São Paulo'),
('Tecnologia da Informação', 'São Paulo'),
('Logística', 'Campinas'),
('Produção', 'São Paulo');

INSERT INTO funcionarios (nome, idade, salario, id_departamento) VALUES
('Ana Silva', 25, 3200.00, 1),
('Bruno Santos', 30, 4500.00, 2),
('Carlos Oliveira', 35, 5200.00, 3),
('Daniel Souza', 28, 3800.00, 4),
('Eduardo Lima', 40, 6500.00, 5),
('Fernanda Costa', 22, 2800.00, 6),
('Gabriel Alves', 27, 4100.00, 2),
('Helena Martins', 33, 7000.00, 4),
('Igor Pereira', 29, 3600.00, 5),
('Juliana Rocha', 38, 8200.00, 3),
('Lucas Mendes', 24, 3000.00, 1),
('Mariana Souza', 31, 5600.00, 6);


INSERT INTO projetos (nome_projeto, valor, status, id_departamento) VALUES
('Projeto RH 2026', 18000.00, 'Planejamento', 1),
('Sistema Financeiro', 35000.00, 'Em andamento', 2),
('Campanha Publicitária', 25000.00, 'Planejamento', 3),
('Sistema de Gestão', 60000.00, 'Em andamento', 4),
('Projeto Logístico', 45000.00, 'Planejamento', 5),
('Automação Industrial', 75000.00, 'Em andamento', 6),
('Portal Corporativo', 30000.00, 'Em andamento', 4),
('Análise de Mercado', 50000.00, 'Planejamento', 3),
('Controle de Estoque', 22000.00, 'Em andamento', 5),
('Treinamento Interno', 12000.00, 'Planejamento', 1);




-- ==========================================================
-- EXERCÍCIOS — MYSQL
-- ==========================================================

-- 1. Liste o nome dos funcionários e o nome do departamento
-- ao qual cada funcionário pertence.
-- Utilize INNER JOIN. 

	select 
		funcionarios.nome,
			departamentos.nome_departamento
				from departamentos
					inner join funcionarios
						ON funcionarios.id_departamento = departamentos.id_departamento;

-- 2. Liste o nome dos funcionários, suas cidades e o nome
-- dos respectivos departamentos, mostrando somente os
-- funcionários que trabalham em departamentos localizados
-- em São Paulo.

select
  funcionarios.nome,
	departamentos.cidade,
    departamentos.nome_departamento
        from departamentos
           inner join funcionarios 
              ON funcionarios.id_departamento = departamentos.id_departamento;
  

-- 3. Liste o nome dos funcionários e seus salários,
-- mostrando somente aqueles que possuem salário entre
-- R$3.000,00 e R$5.000,00.
-- Utilize BETWEEN.

select 

funcionarios.nome,
funcionarios.salario
from funcionarios 
where salario between 3000 and 5000; 
   


-- 4. Liste o nome dos funcionários e o nome do departamento,
-- mostrando somente os funcionários que pertencem aos
-- departamentos 1, 3 ou 5.
-- Utilize IN.

select
 departamentos.id_departamento,
	funcionarios.nome,
		departamentos.nome_departamento
			from departamentos
				inner join funcionarios 
					ON funcionarios.id_departamento = departamentos.id_departamento
					where departamentos.id_departamento in (1 , 2 , 5);


-- 5. Liste o nome e a idade dos funcionários que possuem
-- idade entre 25 e 35 anos e pertencem a algum departamento.
-- Utilize BETWEEN e INNER JOIN.

	select
		funcionarios.nome,
			funcionarios.idade,
				departamentos.nome_departamento
					from departamentos
						inner join funcionarios
							on funcionarios.id_departamento = departamentos.id_departamento
							where funcionarios.idade between 25 and 35;

-- 6. Liste o nome dos funcionários que trabalham nas cidades
-- de São Paulo ou Campinas.
-- Utilize OR.

	select
		funcionarios.nome,
			departamentos.cidade
					from departamentos
						inner join funcionarios
							on funcionarios.id_departamento = departamentos.id_departamento
							where departamentos.cidade = "São Paulo" or "Campinas";


-- 7. Liste o nome do funcionário, seu salário e o nome
-- do departamento, mostrando somente funcionários com
-- salário acima de R$4.000,00.

	select
		f.nome,
			f.salario,
				departamentos.nome_departamento
					from departamentos
						inner join funcionarios as f
							on f.id_departamento = departamentos.id_departamento
							where f.salario > 4000 ;


-- 8. Liste o nome dos funcionários e seus respectivos
-- departamentos, mostrando apenas os funcionários que
-- trabalham nos departamentos 2, 4 ou 6.
-- Utilize IN.


-- 9. Liste o nome dos funcionários, salário e departamento,
-- mostrando aqueles que possuem salário entre R$3.500,00
-- e R$6.000,00 e pertencem ao departamento de
-- Tecnologia da Informação.


-- 10. Liste os funcionários que possuem idade entre
-- 25 e 40 anos ou salário superior a R$6.000,00.
-- Utilize BETWEEN e OR.


-- ==========================================================
-- EXERCÍCIOS COM 3 TABELAS
-- ==========================================================


-- 11. Liste o nome do funcionário, o nome do departamento
-- e o nome dos projetos pertencentes ao departamento
-- desse funcionário.
-- Utilize INNER JOIN com as três tabelas.


-- 12. Liste o nome do projeto, seu valor e o nome
-- do departamento responsável pelo projeto.


-- 13. Liste o nome do funcionário, o departamento e o projeto,
-- mostrando somente projetos com valor entre R$20.000,00
-- e R$50.000,00.


-- 14. Liste o nome do funcionário, o nome do departamento
-- e o projeto, mostrando somente projetos com status
-- 'Em andamento' ou 'Planejamento'.
-- Utilize OR.


-- 15. Liste os projetos pertencentes aos departamentos
-- 1, 2 ou 5.
-- Mostre o nome do projeto, valor e departamento.
-- Utilize IN.


-- 16. Liste o nome dos funcionários, seus salários,
-- o departamento e o projeto, mostrando funcionários
-- com salário entre R$3.000,00 e R$6.000,00.


-- 17. Liste o nome do funcionário, departamento e projeto,
-- mostrando somente projetos com valor superior a
-- R$40.000,00 ou com status 'Planejamento'.


-- 18. Liste os funcionários que pertencem aos departamentos
-- 2, 3 ou 4 e possuem salário entre R$3.500,00 e R$7.000,00.
-- Mostre também o departamento.


-- 19. Liste o nome do funcionário, departamento, projeto
-- e valor do projeto, mostrando somente projetos com valor
-- entre R$25.000,00 e R$60.000,00 e status 'Em andamento'.


-- 20. Liste o nome do funcionário, idade, salário,
-- departamento, projeto e valor do projeto.
--
-- Mostre somente os funcionários que atendam a pelo menos
-- uma das seguintes condições:


-- - idade entre 25 e 30 anos;
-- - salário acima de R$6.000,00;
-- - projeto com valor acima de R$50.000,00.


-- Utilize INNER JOIN, WHERE, BETWEEN e OR.
