CREATE DATABASE LAB02_Formativa;

USE LAB02_Formativa;

CREATE TABLE Empregado (
    Matricula INT PRIMARY KEY,
    Nome VARCHAR(100),
    CPF VARCHAR(15),
    Dt_Nascimento DATE
);

CREATE TABLE Dependente (
    ID_Dependente INT PRIMARY KEY,
    Nome VARCHAR(100),
    Dt_Nascimento DATE,
    fk_Empregado_Matricula INT
);
 
ALTER TABLE Dependente ADD CONSTRAINT FK_Dependente_2
    FOREIGN KEY (fk_Empregado_Matricula)
    REFERENCES Empregado (Matricula)
    ON DELETE CASCADE;
    
INSERT INTO Empregado (Matricula, Nome, CPF, Dt_Nascimento) VALUES
	(123, 'Maria Silva', '123456789', '1990-02-10'),
    (234, 'Rafael Santos', '234567890', '1985-05-20'),
    (345, 'Maria Silva', '345678901', '2000-08-11');
    
INSERT INTO Dependente () VALUES
	(1, 'Tiaguinho', '2020-10-12', 123),
    (2, 'Aninha', '2018-05-03', 123),
    (3, 'Joãozinho', '2015-12-01', 234);
    
SELECT * FROM Empregado, Dependente;

SELECT *
FROM Empregado AS E, Dependente AS D
WHERE E.Matricula = D.fk_Empregado_Matricula;

SELECT E.Matricula AS 'Matrícula Empregado', E.Nome AS Empregado,
		D.Nome AS Dependente,
		TIMESTAMPDIFF(YEAR, D.Dt_Nascimento, CURDATE()) AS 'Idade do Dependente'
FROM Empregado AS E, Dependente AS D
WHERE E.Matricula = D.fk_Empregado_Matricula;