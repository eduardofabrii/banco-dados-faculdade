USE LAB_01;

CREATE TABLE Carro (
    ID_Carro INT,
    Marca VARCHAR(25),
    Modelo VARCHAR(25),
    AnoFabricacao INT,
    Quilometragem FLOAT,
    Estado VARCHAR(10),
    Placa VARCHAR(10),
    Cor VARCHAR(15),
    PRIMARY KEY (ID_Carro, Placa)
);

INSERT INTO Carro (ID_Carro, Marca, Modelo,
	AnoFabricacao, Quilometragem, Estado, Placa, Cor) VALUES 
	(1, 'Toyota', 'Corolla', 2020, 15000.75, 'SP', 'ABC1D23', 'Preto'),
	(2, 'Honda', 'Civic', 2019, 25000.50, 'RJ', 'XYZ9W87', 'Branco'),
	(3, 'Ford', 'Fiesta', 2021, 8000.25, 'MG', 'LMN4O56', 'Vermelho'),
	(4, 'Chevrolet', 'Onix', 2022, 5000.10, 'RS', 'PQR1S23', 'Azul'),
	(5, 'Hyundai', 'HB20', 2023, 2000.65, 'PR', 'STU5V89', 'Cinza');

SELECT * FROM CARRO;

UPDATE CARRO
SET Cor = 'Preto'
WHERE ID_Carro = 3;

UPDATE CARRO
SET AnoFabricacao = 2017
WHERE ID_Carro = 5;

SELECT * FROM CARRO;

SELECT ID_Carro, Modelo, AnoFabricacao, Cor FROM CARRO WHERE ID_Carro IN (3, 5);

DELETE FROM CARRO WHERE ID_Carro = 5;

SELECT * FROM CARRO;