use rian;

CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade int,
    email VARCHAR(150) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    area_em_que_atua varchar(110)
);

insert into usuarios (nome, idade, email, senha, area_em_que_atua)
values
('Ana Souza', 28, 'ana.souza@email.com', 'hash1', 'TI'),
('Bruno Lima', 35, 'bruno.lima@email.com', 'hash2', 'Engenharia'),
('Carla Mendes', 22, 'carla.mendes@email.com', 'hash3', 'Marketing'),
('Daniel Rocha', 31, 'daniel.rocha@email.com', 'hash4', 'TI'),
('Eduarda Alves', 40, 'eduarda.alves@email.com', 'hash5', 'Saúde'),
('Felipe Santos', 27, 'felipe.santos@email.com', 'hash6', 'Educação'),
('Gabriela Costa', 33, 'gabriela.costa@email.com', 'hash7', 'Marketing'),
('Henrique Martins', 45, 'henrique.martins@email.com', 'hash8', 'Engenharia'),
('Isabela Ferreira', 19, 'isabela.ferreira@email.com', 'hash9', 'Educação'),
('João Pereira', 36, 'joao.pereira@email.com', 'hash10', 'TI'),
('Karen Ribeiro', 29, 'karen.ribeiro@email.com', 'hash11', 'RH'),
('Lucas Carvalho', 24, 'lucas.carvalho@email.com', 'hash12', 'TI'),
('Mariana Lopes', 38, 'mariana.lopes@email.com', 'hash13', 'Saúde'),
('Nicolas Teixeira', 21, 'nicolas.teixeira@email.com', 'hash14', 'Marketing'),
('Olivia Barros', 42, 'olivia.barros@email.com', 'hash15', 'Engenharia'),
('Paulo Henrique', 34, 'paulo.henrique@email.com', 'hash16', 'TI'),
('Renata Gomes', 26, 'renata.gomes@email.com', 'hash17', 'RH'),
('Rafael Dias', 30, 'rafael.dias@email.com', 'hash18', 'Financeiro'),
('Sofia Nunes', 23, 'sofia.nunes@email.com', 'hash19', 'Educação'),
('Thiago Moreira', 41, 'thiago.moreira@email.com', 'hash20', 'Financeiro');

-- Questões

-- 1. selecione toda a tabela
select * from usuarios;

-- 2. selecione as informações do segundo usuario
select * from usuarios
where id in (2);

-- 3. selecione todos da area do 'Financeiro' com idade maior que 31
select * from usuarios
where area_em_que_atua = 'Financeiro' and idade > 31;

-- 4. Mude a idade do usuario 2 para 22
update usuarios
set idade = 22
where id in (2);

-- 5. selecione os usuarios da area do TI ou do RH
select * from usuarios
where area_em_que_atua = 'TI' or area_em_que_atua = 'RH';

-- 6. selecione os usuarios que tem idade maior ou igual a 30
select * from usuarios
Where idade >= 30;

-- 7. selecione os usuarios que tem idade menor que 30
select * from usuarios
where idade < 30;

-- 8. altere a area do usuario 13 para Financeiro
update usuarios
set area_em_que_atua = "Financeiro"
where id in (13);

-- 9. altere a area do usuario 18 para Saúde 
update usuarios
set area_em_que_atua = 'Saúde'
where id in (18);

-- 10. selecione todos os usuarios que tenham I e f no inicio do nome
select * from usuarios
where nome like 'I%' or nome like 'F%';

-- 11.selecione todos os email que tenham r em qualquer parte da composição
select * from usuarios
where email like '%r%';

-- 12. selecione todos os email que tenham a em qualquer parte da composição
select * from usuarios
where email like '%a%';


-- 13. selecione só os nomes dos usuários
select nome from usuarios;


-- 14. Selecione os usuários com idade maior que 20
select * from usuarios
where idade > 20;


-- 15. Mude o nome do usuário 15 para Rian Assis
update usuarios
set nome = 'Rian Assis'
where id in (15);


-- 16. Mude o nome do usuário 12 para Michael Jackson
update usuarios
set nome = 'Michael Jackson'
where id in (12);


-- 17. Mude o email do usuário 12 para jackchael@gmail.com
update usuarios
set email = 'jackchael@gmail.com'
where id in (12);


-- 18. Mude o email do usuário 15 para rian3899@gmail.com
update usuarios
set email = 'rian3899@gmail.com'
where id in (15);


-- 19. Mude a idade do usuário 12 para 18
update usuarios
set idade = 18
where id in (12);

-- 20. Mude a idade do usuário 15 para 30
update usuarios
set idade = 30
where id in (15);
