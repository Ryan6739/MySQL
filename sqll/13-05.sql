use rian;

CREATE DATABASE escola;


USE escola;



CREATE TABLE alunos (

    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    curso VARCHAR(50),
    idade INT,
    nota DECIMAL(4,2),
    cidade VARCHAR(50)
);

 table usuarios;

--                         Inserção de Dados


INSERT INTO alunos (nome, curso, idade, nota, cidade) VALUES

('Ana', 'Administração', 17, 8.5, 'São Paulo'),
('Carlos', 'Informática', 18, 7.0, 'Diadema'),
('Marina', 'Administração', 16, 9.2, 'São Paulo'),
('Lucas', 'RH', 17, 6.8, 'Santo André'),
('Fernanda', 'Informática', 18, 8.9, 'São Bernardo'),
('João', 'RH', 19, 5.5, 'Diadema'),
('Paula', 'Administração', 17, 7.7, 'São Paulo'),
('Ricardo', 'Informática', 16, 9.5, 'Santo André'),
('Juliana', 'RH', 18, 8.0, 'Diadema'),
('Bruno', 'Administração', 19, 6.5, 'São Bernardo');

 

-- Exercícios


-- Exercício 1

#   Mostre a quantidade total de alunos cadastrados.

-- Resolva aqui
select count(*) as todos from alunos;

 


-- Exercício 2

#    Mostre a média das notas dos alunos.

-- Resolva aqui
select round(avg(nota),0) as media from alunos;

 


-- Exercício 3

#   Mostre a maior nota da tabela.

-- Resolva aqui
select max(nota) from alunos;

 


-- Exercício 4

#   Mostre a menor nota da tabela.

-- Resolva aqui
select min(nota) as pouco from alunos;

 


-- Exercício 5

#  Mostre a soma de todas as notas dos alunos.

-- Resolva aqui
select  sum(nota) as som_nota from alunos;

 


-- Exercício 6

#   Mostre a média de idade dos alunos.

-- Resolva aqui
select round(avg(idade),0) as aninhos from alunos;

 


-- Exercício 7


#   Mostre quantos alunos existem em cada curso.


-- Resolva aqui
select count(nome) as por_curso from alunos 
group by curso;

 


-- Exercício 8

#   Mostre a média das notas por curso.

-- Resolva aqui
select round(avg(nota)) from alunos 
group by curso;



-- Exercício 9

#   Mostre a maior nota de cada curso.

-- Resolva aqui
select max(nota) from alunos
group by curso;

 


-- Exercício 10

#   Mostre a menor idade por curso.

-- Resolva aqui
select min(idade) from alunos
group by curso;

 


-- Exercício 11

#   Mostre a soma das notas agrupadas por cidade.

-- Resolva aqui
select sum(nota) from alunos
group by cidade; 

 


-- Exercício 12

#   Mostre quantos alunos existem em cada cidade.

-- Resolva aqui
select count(nome) from alunos
group by cidade;

 


-- Exercício 13

#   Mostre a média das notas apenas dos alunos de Informática.

-- Resolva aqui
select round(avg(nota)) from alunos
group by curso = 'Informática';

 


-- Exercício 14

#   Mostre a quantidade de alunos com nota maior que 7.

-- Resolva aqui
select count(nome) from alunos
group by nota having nota > 7;

 


-- Exercício 15

#   Mostre a média das notas por curso, exibindo apenas cursos com média maior que 7.5.

-- Resolva aqui
select round(avg(nota)) from alunos
group by curso having avg(nota) > 7.5;

 