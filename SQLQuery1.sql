CREATE DATABASE Optus_Tarde;

USE Optus_tarde;

CREATE TABLE Estilos (
 IdEstilo INT IDENTITY PRIMARY KEY,
 Nome VARCHAR(250)
);

CREATE  TABLE Artistas (
IdArtista INT PRIMARY KEY IDENTITY,
Nome VARCHAR(250)
);

CREATE TABLE Album(
IdAlbum INT PRIMARY KEY IDENTITY,
DataLancamento DATE,
Localizacao VARCHAR(200),
QtdMinutos BIGINT,
IdArtista INT FOREIGN KEY REFERENCES Artistas (IdArtista),
IdEstilo INT FOREIGN KEY REFERENCES Estilos(IdEstilo)
);

CREATE TABLE TipoUsuario(
IdTipoUsuario int identity PRIMARY KEY,
Titulo VARCHAR(200)
);

CREATE TABLE Usuarios(
IdUsuario INT PRIMARY KEY IDENTITY,
IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario),
Nome VARCHAR(200),
email VARCHAR(200),
senha VARCHAR(200),
Permissao VARCHAR(200)
);


-- alter table tabela, drop column coluna




