CREATE DATABASE Optus_Tarde;

USE Optus_tarde;

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


-- alter table tabela, drop column coluna


INSERT INTO Estilos (Nome)

VALUES('pagode'),('Samba'),('Rock');

INSERT INTO Artistas (Nome)
VALUES('ZECA PAGODINHO'),('ANA'),('JOAO NOGUEIRA');

INSERT INTO Albuns (Nome, DataLancamento, Localizacao, QtdMinutos, IdArtista, IdEstilo)
VALUES('Equalize','25/08/2001','ACRE',120, 3,3);
