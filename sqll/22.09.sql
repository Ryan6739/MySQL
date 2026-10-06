CREATE DATABASE cadastro;
USE cadastro;

-- Tabela de usuários
CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    idade INT
);

-- Tabela de CPF
CREATE TABLE cpfs (
    id_cpf INT PRIMARY KEY AUTO_INCREMENT,
    cpf VARCHAR(14) NOT NULL,
    id_usuario INT,

    FOREIGN KEY (id_usuario)
        REFERENCES usuarios(id_usuario)
);

-- Tabela de endereços
CREATE TABLE enderecos (
    id_endereco INT PRIMARY KEY AUTO_INCREMENT,
    rua VARCHAR(100),
    numero INT,
    cidade VARCHAR(50),
    estado CHAR(2),
    id_usuario INT,

    FOREIGN KEY (id_usuario)
        REFERENCES usuarios(id_usuario)
);


-- 2. Inserindo dados

INSERT INTO usuarios (nome, email, idade) VALUES
('João Silva', 'joao@email.com', 25),
('Maria Souza', 'maria@email.com', 32),
('Carlos Oliveira', 'carlos@email.com', 19),
('Ana Santos', 'ana@email.com', 28),
('Pedro Costa', 'pedro@email.com', 41),
('Juliana Lima', 'juliana@email.com', 35),
('Rafael Alves', 'rafael@email.com', 22),
('Fernanda Rocha', 'fernanda@email.com', 30);

INSERT INTO cpfs (cpf, id_usuario) VALUES
('111.111.111-11', 1),
('222.222.222-22', 2),
('333.333.333-33', 3),
('444.444.444-44', 4),
('555.555.555-55', 5),
('666.666.666-66', 6),
('777.777.777-77', 7),
('888.888.888-88', 8);

INSERT INTO enderecos (rua, numero, cidade, estado, id_usuario) VALUES
('Rua das Flores', 100, 'São Paulo', 'SP', 1),
('Rua Central', 250, 'Campinas', 'SP', 2),
('Avenida Brasil', 500, 'Santos', 'SP', 3),
('Rua das Palmeiras', 80, 'Sorocaba', 'SP', 4),
('Avenida Paulista', 1500, 'São Paulo', 'SP', 5),
('Rua do Comércio', 300, 'Jundiaí', 'SP', 6),
('Rua das Acácias', 75, 'Osasco', 'SP', 7),
('Avenida Independência', 900, 'São Paulo', 'SP', 8);


-- Exercício 1 — INNER JOIN básico
-- Liste o nome dos usuários e seus respectivos CPFs.


-- Exercício 2 — Usuário e endereço
-- Liste o nome dos usuários e a rua onde cada usuário mora.


-- Exercício 3 — Três tabelas
-- Utilizando INNER JOIN, liste:
-- Nome do usuário
-- CPF
-- Cidade
-- Utilize as três tabelas: usuarios, cpfs e enderecos.


-- Exercício 4 — Nome e endereço completo
-- Mostre:
-- Nome
-- Rua
-- Número
-- Cidade
-- Estado
-- Utilize usuarios e enderecos.


-- Exercício 5 — CPF e cidade
-- Mostre:
-- Nome do usuário
-- CPF
-- Cidade
-- Utilize as três tabelas.


-- Exercício 6 — WHERE
-- Liste o nome, CPF e cidade dos usuários que moram no estado de SP.
-- Utilize INNER JOIN e WHERE.


-- Exercício 7 — WHERE com cidade
-- Liste o nome, CPF e endereço dos usuários que moram na cidade de São Paulo.


-- Exercício 8 — AND
-- Liste o nome, CPF e cidade dos usuários que:
-- tenham idade maior que 25 anos;
-- e morem em São Paulo.
-- Utilize INNER JOIN e WHERE com AND.


-- Exercício 9 — OR
-- Liste os usuários que moram em São Paulo ou Campinas, mostrando:
-- Nome
-- CPF
-- Cidade


-- Exercício 10 — BETWEEN
-- Liste o nome, CPF e idade dos usuários cuja idade esteja entre 20 e 30 anos.
-- Utilize BETWEEN.


-- Exercício 11 — LIKE
-- Liste os usuários cujo nome comece com a letra A.
-- Mostre:
-- Nome
-- CPF
-- Cidade
-- Utilize LIKE.


-- Exercício 12 — LIKE + INNER JOIN
-- Liste todos os usuários cujo nome contenha a letra a.
-- Mostre:
-- Nome
-- CPF
-- Rua
-- Cidade
-- Utilize as três tabelas e LIKE.


-- Exercício 13 — ORDER BY
-- Liste todos os usuários mostrando:
-- Nome
-- CPF
-- Cidade
-- Estado
-- Ordene o resultado pelo nome em ordem alfabética.


-- Exercício 14 — INNER JOIN + WHERE + ORDER BY
-- Liste os usuários com idade maior ou igual a 30 anos, mostrando:
-- Nome
-- Idade
-- CPF
-- Cidade
-- Ordene os resultados pela idade do maior para o menor.


-- Exercício 15 — Desafio
-- Crie uma consulta utilizando as três tabelas que apresente:
-- Nome do usuário
-- E-mail
-- Idade
-- CPF
-- Rua
-- Número
-- Cidade
-- Estado


-- A consulta deve mostrar somente usuários:
-- com idade entre 25 e 40 anos;
-- cujo nome contenha a letra a;
-- e que morem em São Paulo ou Campinas.


-- Ordene o resultado pelo nome em ordem crescente.