drop database tstbsi_tb;

CREATE DATABASE TSTBSI_TB;

USE TSTBSI_TB;

CREATE TABLE Colaborador (
    Matricula INT PRIMARY KEY,
    Nome VARCHAR(50),
    CPF VARCHAR(20),
    Logradouro VARCHAR(100),
    Numero INT,
    CEP VARCHAR(20),
    Dt_Nascimento DATE
);

SELECT Matricula, Nome, Dt_Nascimento AS Nascimento, 
	TIMESTAMPDIFF(YEAR, Dt_Nascimento, NOW()) AS Idade
FROM Colaborador;

SELECT NOW();

CREATE TABLE Dependente (
    ID_Dep INT PRIMARY KEY,
    Nome VARCHAR(50),
    Parentesco VARCHAR(20),
    Dt_Nasc DATE,
    fk_Colaborador_Matricula INT
);
 
ALTER TABLE Dependente ADD CONSTRAINT FK_Dependente_2
    FOREIGN KEY (fk_Colaborador_Matricula)
    REFERENCES Colaborador (Matricula)
    ON DELETE CASCADE;

SELECT * FROM COLABORADOR;

INSERT INTO Colaborador (Matricula, Nome, CPF, Logradouro, Numero, CEP, Dt_Nascimento) values 
(123, 'Maria', '456789', 'R. XV de Novembro', 1000, '80.000-123', '1990-10-22'),
(124, 'Pedro', '783129', 'R. Muricy', 180, '80.100-000', '1995-05-20'),
(125, 'João', '345123', 'Av. Torres', 5000, '13.881-234', '2000-02-26');

INSERT INTO Dependente (ID_Dep, Nome, Parentesco, Dt_Nasc, fk_Colaborador_Matricula) values 
(200, 'Huguinho', 'Filho', '2010-05-10', 123),
(300, 'Zezinho', 'Filho',  '2021-08-04', 123),
(400, 'Luizinho', 'Enteado','2022-02-28', 125);

SELECT * FROM DEPENDENTE;

SELECT Nome AS Crianca, Parentesco, 
TIMESTAMPDIFF(YEAR, Dt_Nasc, NOW()) AS 'Idade Crianca',
fk_Colaborador_Matricula AS 'Mat. Progenitor'
FROM dependente;


