CREATE DATABASE Optus_Tarde;

USE Optus_tarde;

-- DDL ESTRUTURALÇÃO DO BANCO

CREATE TABLE Estilos (
 IdEstilo INT IDENTITY PRIMARY KEY,
 Nome VARCHAR(250) NOT NULL
);

CREATE  TABLE Artistas (
IdArtista INT PRIMARY KEY IDENTITY,
Nome VARCHAR(250) NOT NULL
);

CREATE TABLE Album(
IdAlbum INT PRIMARY KEY IDENTITY,
Nome VARCHAR(200) NOT NULL,
DataLancamento DATE,
Localizacao VARCHAR(200) NOT NULL,
QtdMinutos BIGINT,
IdArtista INT FOREIGN KEY REFERENCES Artistas (IdArtista),
IdEstilo INT FOREIGN KEY REFERENCES Estilos(IdEstilo)
);

CREATE TABLE TipoUsuario(
IdTipoUsuario int identity PRIMARY KEY,
Titulo VARCHAR(200) NOT NULL
);

CREATE TABLE Usuarios(
IdUsuario INT PRIMARY KEY IDENTITY,
IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario),
Nome VARCHAR(200) NOT NULL,
email VARCHAR(200) NOT NULL,
senha VARCHAR(200) NOT NULL,
Permissao VARCHAR(200) NOT NULL
);




-- DML MANIPULAÇÃO DE DADOS

-- alter table tabela, drop column coluna


INSERT INTO Estilos (Nome)
VALUES('pagode'),('Samba'),('Rock'),
('rock'),('amba'),('IWDJ');

INSERT INTO Artistas (Nome)
VALUES('ZECA PAGODINHO'),('ANA'),('JOAO NOGUEIRA'), ('Alberto rosa'),('Josiel nogueira');

INSERT INTO Album(Nome, DataLancamento, Localizacao, QtdMinutos, IdArtista, IdEstilo)
VALUES('Equalize','25/08/2001','ACRE',120, 3,3),
('album2','25/01/1970','Rio Branco', 350,2,2),
('album2','25/01/1970','Rio Branco', 350,1,1),
('album2','25/01/1970','Rio Branco', 350,4,4);



--update para alterar dados

UPDATE Artistas
SET Nome = 'joao'
WHERE IdArtista = 2;

-- DELETE 

DELETE FROM Artistas
WHERE IdArtista = 5;

-- truncate table tabela apaga todos os valores presentes numa tabela


-- Data Query - Consulta de dados


SELECT * FROM Album;

SELECT Nome from Album;

SELECT Nome, DataLancamento FROM Album;

SELECT * FROM Album WHERE IdAlbum=1;

