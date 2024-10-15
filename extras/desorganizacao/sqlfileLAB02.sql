CREATE DATABASE LAB_02;

USE LAB_02;

CREATE TABLE Disciplina (
ID_Disciplina INT NOT NULL,
Nome VARCHAR(50) NOT NULL,
Ementa TEXT,
Creditos INT NOT NULL,
Periodo INT NOT NULL
);

ALTER TABLE Disciplina
ADD CONSTRAINT PRIMARY KEY (ID_Disciplina);

INSERT INTO disciplina VALUES (1, 'Redes', 'Básico de redes de computadores', 4, 3);
SELECT * FROM disciplina;

INSERT INTO disciplina VALUES (1, 'Banco de Dados', NULL, 4, 2);
SELECT * FROM disciplina;

INSERT INTO disciplina VALUES
(2, 'Matemática Aplicada', 'Estudo das aplicações práticas da matemática em diversos campos, incluindo engenharia e ciências sociais.', 4, 4),
(3, 'História da Arte', 'Análise dos principais movimentos artísticos ao longo da história, incluindo o Renascimento, Barroco e Modernismo.', 3, 6),
(4, 'Programação Avançada', 'Aprofundamento em técnicas avançadas de programação, incluindo algoritmos complexos e estruturas de dados.', 5, 1),
(5, 'Economia Internacional', 'Estudo das teorias e práticas da economia global, com foco em comércio, finanças e políticas internacionais.', 4, 12),
(6, 'Psicologia Organizacional', NULL, 3, 3),
(7, 'Bioinformática', 'Aplicação de técnicas de computação para resolver problemas biológicos, incluindo análise de dados genéticos e proteômicos.', 4, 15);

CREATE TABLE Professor (
	id_prof INT AUTO_INCREMENT PRIMARY KEY, -- chave primária auto-incrementada
	nome VARCHAR(50) NOT NULL,
	dt_nascimento DATE,
	apelido VARCHAR(50) GENERATED ALWAYS AS (SUBSTRING_INDEX(nome, " ", 1)) -- atributo derivado --
);

SELECT DATE_FORMAT(curdate(), '%d/%m/%y') AS Data; -- date format: formata dia/mês/ano - curdate: retorna a data atual

INSERT INTO Professor (nome, dt_nascimento)
VALUES ('Maria das Flores', STR_TO_DATE('23-12-1990', '%d-%m-%Y')); -- converte string para data

-- Apresenta os dados da tabela
SELECT * FROM Professor;

SELECT nome, dt_nascimento AS 'Data de Nascimento',
TIMESTAMPDIFF(YEAR, dt_nascimento, CURDATE()) AS Idade
FROM Professor;

INSERT INTO Professor (nome, dt_nascimento) VALUES
('José da Silva', STR_TO_DATE('20/02/1985', '%d/%m/%Y')),
('Paulo Soares', STR_TO_DATE('10/12/1995', '%d/%m/%Y')),
('Ana Rita', STR_TO_DATE('20/02/2000', '%d/%m/%Y'));

SELECT * FROM PROFESSOR;

SELECT nome, dt_nascimento AS 'Data de Nascimento',
TIMESTAMPDIFF(YEAR, dt_nascimento, CURDATE()) AS 'Idade'
FROM Professor;

CREATE TABLE Turma (
	id_turma int AUTO_INCREMENT PRIMARY KEY,-- PK auto-incrementada:
	ano int NOT NULL,
	semestre int NOT NULL,
	id_discip int NOT NULL,
	id_prof int NOT NULL,
	CONSTRAINT CK_Sem CHECK (semestre BETWEEN 1 AND 2), -- semestre apenas aceita valores 1 e 2
	CONSTRAINT UN_Ofeta UNIQUE (ano, semestre, id_discip, id_prof), -- Prof.Disc.Ano.Sem = exclusivo
	CONSTRAINT FK_Prof FOREIGN KEY (id_prof) REFERENCES Professor (id_prof), -- FK Professor
	CONSTRAINT FK_Disciplina FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id_disciplina) -- FK Disciplina
);

INSERT INTO Turma (ano, semestre, id_prof, id_discip) VALUES
(2020, 1, 2, 2),
(2020, 2, 2, 2),
(2021, 1, 3, 1);
SELECT * FROM Turma;

INSERT INTO Turma (ano, semestre, id_prof, id_discip) VALUES
(2020, 1, 3, 2);

INSERT INTO Turma (ano, semestre, id_prof, id_discip) VALUES
(2020, 1, 2, 1);

SELECT * FROM Professor;
SELECT * FROM Disciplina;
SELECT * FROM Turma;

SELECT *
FROM Turma, Professor, Disciplina; -- produto cartesiano de 3 tabelas

SELECT *
FROM Turma AS t, Professor AS p, Disciplina AS d -- prod. Cartesiano
WHERE t.id_discip = d.id_disciplina AND p.id_prof = t.id_prof; -- com PK x Fk

SELECT t.ano, t.semestre, p.nome, d.nome
FROM Turma AS t, Professor AS p, Disciplina AS d
WHERE t.id_discip = d.id_disciplina AND
p.id_prof = t.id_prof AND
t.semestre = 1;

SELECT t.ano, t.semestre, p.nome, d.nome
FROM Turma AS t, Professor AS p, Disciplina AS d
WHERE t.id_discip = d.id_disciplina AND p.id_prof = t.id_prof
ORDER BY t.ano ASC, t.semestre DESC;

SELECT p.nome, d.nome, t.ano
FROM Turma AS t, Professor AS p, Disciplina AS d
WHERE t.id_discip = d.id_disciplina AND
p.id_prof = t.id_prof AND
p.nome LIKE 'j%'; -- nome começa com j

-- FALTA O 2.9

CREATE TABLE Colaborador (
    id_emp INT NOT NULL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    salario FLOAT NOT NULL,
    CHECK (id_emp BETWEEN 0 AND 1000),
    CHECK (salario >= 1000)
);

INSERT INTO Colaborador VALUES (999, 'Josué', 1500.56);

INSERT INTO Colaborador VALUES (1, 'Paulo', 1230.31);

INSERT INTO Colaborador (id_emp, salario) VALUES
(300, 3500.56); 

INSERT INTO Colaborador VALUES
(400, 'Antônio', 1350.56); 

select * from colaborador; 

