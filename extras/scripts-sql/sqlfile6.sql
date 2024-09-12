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

CREATE TABLE Projeto (
    ID_Proj INT PRIMARY KEY,
    Nome_Proj VARCHAR(50)
);

CREATE TABLE Trabalha (
    ID_Trab INT PRIMARY KEY,
    fk_Colaborador_Matricula INT PRIMARY KEY,
    fk_Projeto_ID_Proj INT,
    Dt_Fim DATE,
    Dt_Inicio DATE
);
 
ALTER TABLE Dependente ADD CONSTRAINT FK_Dependente_2
    FOREIGN KEY (fk_Colaborador_Matricula)
    REFERENCES Colaborador (Matricula)
    ON DELETE CASCADE;
 
ALTER TABLE Trabalha ADD CONSTRAINT FK_Trabalha_2
    FOREIGN KEY (fk_Colaborador_Matricula)
    REFERENCES Colaborador (Matricula)
    ON DELETE RESTRICT;
 
ALTER TABLE Trabalha ADD CONSTRAINT FK_Trabalha_3
    FOREIGN KEY (fk_Projeto_ID_Proj)
    REFERENCES Projeto (ID_Proj)
    ON DELETE SET NULL;