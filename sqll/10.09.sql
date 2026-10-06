use rian;

-- Tabela de cursos
CREATE TABLE cursos (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR(100) NOT NULL
);

-- Tabela de alunos
CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    id_curso INT,

    FOREIGN KEY (id_curso)
        REFERENCES cursos(id_curso)
);

-- Tabela de notas
CREATE TABLE notas (
    id_nota INT PRIMARY KEY AUTO_INCREMENT,
    nota DECIMAL(4,2),
    disciplina VARCHAR(100),
    id_aluno INT,

    FOREIGN KEY (id_aluno)
        REFERENCES alunos(id_aluno)
);



INSERT INTO cursos (nome_curso) VALUES
('Técnico em Administração'),
('Técnico em Informática'),
('Técnico em Logística'),
('Técnico em Contabilidade');

INSERT INTO alunos (nome, idade, id_curso) VALUES
('João Silva', 18, 1),
('Maria Santos', 19, 1),
('Pedro Oliveira', 20, 2),
('Ana Souza', 18, 2),
('Carlos Lima', 21, 3),
('Juliana Costa', 19, 4);

INSERT INTO notas (nota, disciplina, id_aluno) VALUES
(8.5, 'Matemática', 1),
(7.0, 'Informática', 1),
(9.0, 'Administração', 2),
(6.5, 'Matemática', 2),
(8.0, 'Banco de Dados', 3),
(9.5, 'Programação', 3),
(7.5, 'Redes', 4),
(8.5, 'Programação', 4),
(6.0, 'Logística', 5),
(9.0, 'Gestão de Estoque', 5),
(8.0, 'Contabilidade', 6);


----------------------------------------------------------------------------------------------------------------------
-- Exercício 1 — Alunos e cursos
--
-- Faça uma consulta utilizando INNER JOIN para mostrar o nome do aluno
-- e o nome do curso em que ele está matriculado.
 select 
	alunos.nome,
		cursos.nome_curso
			from cursos
				inner join alunos
					ON alunos.id_curso = cursos.id_curso;

-- Exercício 2 — Alunos e notas
--
-- Utilizando INNER JOIN, mostre o nome do aluno, a disciplina e a nota obtida.
 select 
	alunos.nome,
		notas.disciplina,
			notas.nota
				from alunos
					inner join notas
						ON notas.id_aluno = alunos.id_aluno;

-- Exercício 3 — Três tabelas
--
-- Utilize INNER JOIN entre as três tabelas para mostrar:
--
-- Nome do aluno
-- Nome do curso
-- Disciplina
-- Nota
 select 
	alunos.nome,
		cursos.nome_curso,
			notas.disciplina,
				notas.nota
					from alunos
						inner join notas
							ON notas.id_aluno = alunos.id_aluno
						inner join cursos
							ON cursos.id_curso = alunos.id_curso;

-- Exercício 4 — Notas maiores que 8
--
-- Mostre o nome do aluno, curso, disciplina e nota apenas dos alunos
-- que obtiveram nota maior que 8.
 select 
	alunos.nome,
		cursos.nome_curso,
			notas.disciplina,
				notas.nota
					from alunos
						inner join notas
							ON notas.id_aluno = alunos.id_aluno
						inner join cursos
							ON cursos.id_curso = alunos.id_curso
							where nota > 8;

-- Exercício 5 — Notas menores que 7
--
-- Mostre o nome do aluno, nome do curso e nota dos alunos
-- que obtiveram nota menor que 7.
 select 
	alunos.nome,
		cursos.nome_curso,
			notas.nota
				from alunos
					inner join notas
						ON notas.id_aluno = alunos.id_aluno
					inner join cursos
						ON cursos.id_curso = alunos.id_curso
                        where nota < 7;

-- Exercício 6 — Nota entre 7 e 9
--
-- Utilize BETWEEN para mostrar os alunos que possuem notas entre 7 e 9.
 select 
	alunos.nome,
			notas.nota
				from alunos
					inner join notas
						ON notas.id_aluno = alunos.id_aluno
                        WHERE NOTA between 7 and 9;

-- Exercício 7 — Curso específico
--
-- Mostre o nome dos alunos, curso, disciplina e nota somente dos alunos
-- matriculados no curso:
--
-- Técnico em Administração
--
-- Utilize WHERE.
 select 
	alunos.nome,
		cursos.nome_curso,
			notas.nota
				from alunos
					inner join notas
						ON notas.id_aluno = alunos.id_aluno
					inner join cursos
						ON cursos.id_curso = alunos.id_curso
                        where nome_curso = "Técnico em Administração";

-- Exercício 8 — Disciplina específica
--
-- Mostre o nome do aluno, curso e nota somente para os alunos
-- que possuem notas na disciplina Matemática.
 select 
	alunos.nome,
		cursos.nome_curso,
			notas.nota
					from alunos
					inner join notas
						ON notas.id_aluno = alunos.id_aluno
					inner join cursos
						ON cursos.id_curso = alunos.id_curso
						where notas.disciplina = "Matemática";

-- Exercício 9 — Ordenação por nota
--
-- Mostre:
--
-- Nome do aluno
-- Curso
-- Disciplina
-- Nota
--
-- Ordene os resultados da maior nota para a menor nota utilizando ORDER BY.
 select 
	alunos.nome,
		cursos.nome_curso,
			notas.disciplina,
				notas.nota
					from alunos
						inner join notas
							ON notas.id_aluno = alunos.id_aluno
						inner join cursos
							ON cursos.id_curso = alunos.id_curso
                            order by notas.nota desc;

-- Exercício 10 — Ordenação por aluno
--
-- Mostre o nome do aluno, curso, disciplina e nota.
-- Ordene os resultados pelo nome do aluno em ordem alfabética.
 select 
	alunos.nome,
		cursos.nome_curso,
			notas.disciplina,
				notas.nota
					from alunos
						inner join notas
							ON notas.id_aluno = alunos.id_aluno
						inner join cursos
							ON cursos.id_curso = alunos.id_curso
                            order by alunos.nome;

-- Exercício 11 — LIKE
--
-- Utilize LIKE para mostrar todos os alunos cujo nome começa com
-- a letra "A", apresentando também o curso e a nota.
 select 
	alunos.nome,
		cursos.nome_curso,
			notas.nota
				from alunos
					inner join notas
						ON notas.id_aluno = alunos.id_aluno
					inner join cursos
						ON cursos.id_curso = alunos.id_curso
                        where alunos.nome like "A%";

-- Exercício 12 — IN
--
-- Utilize IN para mostrar os alunos que pertencem aos seguintes cursos:
--
-- Técnico em Administração
-- Técnico em Informática
--
-- Apresente nome do aluno, curso e nota.
 select 
	alunos.nome,
		cursos.nome_curso,
			notas.nota
				from alunos
					inner join notas
						ON notas.id_aluno = alunos.id_aluno
					inner join cursos
						ON cursos.id_curso = alunos.id_curso
                        where nome_curso in ("Técnico em Administração", "Técnico em Informática");

-- Exercício 13 — BETWEEN + ORDER BY
--
-- Mostre os alunos que possuem notas entre 6 e 9, apresentando:
--
-- Nome
-- Curso
-- Disciplina
-- Nota
--
-- Ordene pela nota da maior para a menor.
 select 
	alunos.nome,
		cursos.nome_curso,
			notas.disciplina,
				notas.nota
					from alunos
						inner join notas
							ON notas.id_aluno = alunos.id_aluno
						inner join cursos
							ON cursos.id_curso = alunos.id_curso
                            where notas.nota between 6 and 9 
                            order by notas.nota desc;

-- Exercício 14 — WHERE + AND
--
-- Mostre os alunos do curso Técnico em Informática
-- que possuem nota maior ou igual a 8.
--
-- Apresente:
--
-- Nome do aluno
-- Curso
-- Disciplina
-- Nota
--
-- Utilize WHERE e AND.
 select 
	alunos.nome,
		cursos.nome_curso,
			notas.disciplina,
				notas.nota
					from alunos
						inner join notas
							ON notas.id_aluno = alunos.id_aluno
						inner join cursos
							ON cursos.id_curso = alunos.id_curso
                            where cursos.nome_curso = "Técnico em Informática" and
                            notas.nota >= 8;

-- Exercício 15 — Desafio
--
-- Utilizando INNER JOIN entre as três tabelas, mostre os alunos que:
--
-- estejam matriculados no curso Técnico em Administração;
-- tenham nota maior ou igual a 7;
-- estejam na disciplina Matemática.
--
-- Apresente:
--
-- Nome do aluno
-- Curso
-- Disciplina
-- Nota
--
-- Ordene pela nota em ordem decrescente.
select 
	alunos.nome,
		cursos.nome_curso,
			notas.disciplina,
				notas.nota
					from alunos
						inner join notas
							ON notas.id_aluno = alunos.id_aluno
						inner join cursos
							ON cursos.id_curso = alunos.id_curso
							where nome_curso = "Técnico em Administração" and
							notas.nota >= 7 and
							notas.disciplina = "Matemática";

-- Desafio extra para os alunos
--
-- Tente descobrir como fazer esta consulta:
--
-- Mostrar somente os alunos que possuem nota entre 7 e 10,
-- cujo nome começa com a letra "M",
-- ordenando pela nota da maior para a menor.

select 
	alunos.nome,
		cursos.nome_curso,
			notas.disciplina,
				notas.nota
					from alunos
						inner join notas
							ON notas.id_aluno = alunos.id_aluno
						inner join cursos
							ON cursos.id_curso = alunos.id_curso
							where alunos.nome like "M%" and
							notas.nota between 7 and 10,
							order by notas.nota desc;







drop table notas;
drop table cursos;
drop table alunos;