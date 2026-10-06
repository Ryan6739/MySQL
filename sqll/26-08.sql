use rian;

CREATE TABLE curso (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR(100) NOT NULL
);

-- ==========================================
-- TABELA DE ALUNOS
-- ==========================================
CREATE TABLE aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    id_curso INT NOT NULL,
    
	foreign key (id_curso) references curso(id_curso)	
);

-- ==========================================
-- TABELA DE DISCIPLINAS
-- ==========================================
CREATE TABLE disciplina (
    id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
    nome_disciplina VARCHAR(100) NOT NULL
);

-- ==========================================
-- TABELA DE NOTAS
-- ==========================================
CREATE TABLE nota (
    id_nota INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_disciplina INT NOT NULL,
    nota DECIMAL(4,2) NOT NULL,
    
    foreign key (id_aluno) references aluno(id_aluno),
    foreign key (id_disciplina) references disciplina(id_disciplina)
);

INSERT INTO curso (nome_curso) VALUES
('Administração'),
('Logística'),
('Desenvolvimento de Sistemas'),
('Recursos Humanos');

INSERT INTO disciplina (nome_disciplina) VALUES
('Programação'),
('Projeto de Sistemas'),
('Banco de Dados'),
('Matemática'),
('Administração Financeira'),
('Logística Empresarial'),
('Processos Gerenciais'),
('Comunicação Empresarial');

INSERT INTO aluno (nome, cidade, id_curso) VALUES
('Ana Silva', 'São Paulo', 1),
('Carlos Santos', 'Santos', 2),
('Amanda Souza', 'Sorocaba', 3),
('Bruno Almeida', 'São Paulo', 3),
('Camila Oliveira', 'Campinas', 1),
('Daniel Silva', 'São Paulo', 2),
('Fernanda Costa', 'Santos', 4),
('Gabriela Martins', 'São Paulo', 1),
('Lucas Andrade', 'Salvador', 2),
('Mariana Alves', 'São Paulo', 3),
('Pedro Silva', 'São Carlos', 3),
('Carolina Ramos', 'Santo André', 1);

INSERT INTO nota (id_aluno, id_disciplina, nota) VALUES

-- Ana Silva
(1, 1, 9.0),
(1, 3, 8.5),

-- Carlos Santos
(2, 6, 7.5),
(2, 7, 6.5),

-- Amanda Souza
(3, 1, 9.5),
(3, 2, 8.0),

-- Bruno Almeida
(4, 1, 8.5),
(4, 3, 7.0),

-- Camila Oliveira
(5, 5, 9.0),
(5, 8, 8.5),

-- Daniel Silva
(6, 6, 6.0),
(6, 7, 7.5),

-- Fernanda Costa
(7, 8, 8.0),
(7, 4, 6.5),

-- Gabriela Martins
(8, 5, 9.5),
(8, 7, 8.0),

-- Lucas Andrade
(9, 6, 7.0),
(9, 4, 5.5),

-- Mariana Alves
(10, 1, 8.5),
(10, 3, 9.0),

-- Pedro Silva
(11, 1, 6.5),
(11, 2, 7.5),

-- Carolina Ramos
(12, 5, 9.0),
(12, 8, 7.5);


-- 1.Liste o nome do aluno e a disciplina usando INNER JOIN.
	select 
		aluno.nome,
			disciplina.nome_disciplina
				from nota
					inner join aluno
						ON nota.id_aluno = aluno.id_aluno
					inner join disciplina
						ON nota.id_disciplina = disciplina.id_disciplina;

-- 2.Liste o nome do aluno e a nota de cada aluno.
	select
		aluno.nome,
			nota.nota
				from nota
					inner join aluno
							ON nota.id_aluno = aluno.id_aluno;


-- 3.Liste o nome do aluno, a disciplina e a nota.
select aluno.nome, disciplina.nome_disciplina, nota.nota from nota
inner join aluno
on nota.id_aluno = aluno.id_aluno
inner join disciplina
on nota.id_disciplina = disciplina.id_disciplina;

-- 4.Liste os alunos que tiveram nota maior que 7.
	select
		aluno.nome,
			nota.nota
				from nota
					inner join aluno
						ON nota.id_aluno = aluno.id_aluno
                        where nota > 7;

-- 5.Liste o nome dos alunos que tiveram nota menor que 7.
	select 
		aluno.nome,
			nota.nota
				from nota
					inner join aluno
						On nota.id_aluno = aluno.id_aluno
                        where nota < 7;


-- 6.Liste o nome dos alunos que tiveram nota entre 7 e 9.
	select
		aluno.nome,
			nota.nota
				from nota
					inner join aluno
						ON nota.id_aluno = aluno.id_aluno
                        where nota between 7 and 9; 


-- 7.Liste o nome dos alunos que moram em São Paulo e mostre a disciplina e a nota.
	select
		aluno.nome,
			nota.nota
				from nota
					inner join aluno
						ON nota.id_aluno = aluno.id_aluno
                        where nota between 7 and 9; 


-- 8.Liste os alunos cujo nome começa com A.

-- 9.Liste os alunos cujo nome começa com C.

-- 10.Liste os alunos cujo nome termina com A.

-- 11.Liste os alunos cujo nome contém a letra "a".

-- 12.Liste os alunos cujo nome contém a palavra ou parte "Sil".

-- 13.Liste os alunos do curso de Administração que tiveram nota maior que 8.

-- 14.Liste os alunos de Desenvolvimento de Sistemas cujo nome começa com a letra B.

-- 15.Liste os alunos que moram em cidades cujo nome começa com "S".

-- 16.Liste os alunos cuja disciplina contém a palavra "Pro".

-- 17.Liste os alunos cujo nome contém a letra "an".

-- 18.Liste o nome, curso, disciplina e nota dos alunos cujo nome começa com A ou D.

-- Exercício 19.Liste os alunos de Administração ou Logística cujo nome contém a letra "a" e cuja nota seja maior ou igual a 7.

-- 20.Liste o nome, curso, disciplina e nota dos alunos cujo nome não começa com "A", cuja disciplina contenha a letra "a" e cuja nota seja maior que 7.