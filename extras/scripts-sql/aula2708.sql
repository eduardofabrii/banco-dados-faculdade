create database tst_bsi_tb1;

CREATE TABLE Dependente (
    ID_Dependente INT PRIMARY KEY,
    Nome VARCHAR(100),
    Dt_Nascimento DATE,
    Parentesco VARCHAR(20),
    fk_Colaborador_Matricula INT
);

CREATE TABLE Colaborador (
    Matricula INT PRIMARY KEY,
	Nome VARCHAR(50),
    CPF VARCHAR(20),
    Numero INT,
    CEP VARCHAR(20),
    Logradouro VARCHAR(100),
    Dt_Nasc DATE
);

CREATE TABLE Telefone (
    Telefone VARCHAR(20),
    fk_Colaborador_Matricula INT,
    PRIMARY KEY (fk_Colaborador_Matricula, Telefone)
);
 
ALTER TABLE Telefone ADD CONSTRAINT FK_Telefone_1
    FOREIGN KEY (fk_Colaborador_Matricula)
    REFERENCES Colaborador (Matricula);
    
    ALTER TABLE Dependente ADD CONSTRAINT FK_Dependente_2
    FOREIGN KEY (fk_Colaborador_Matricula)
    REFERENCES Colaborador (Matricula)
    ON DELETE CASCADE;