CREATE DATABASE Biblioteca_Tarde;

USE Biblioteca_Tarde;

CREATE TABLE Autores (
	IdAutor     INT PRIMARY KEY IDENTITY,
	NomeAutor	VARCHAR(200) NOT NULL
);

CREATE TABLE Generos (
	IdGenero	INT PRIMARY KEY IDENTITY,
	NomeGenero	VARCHAR(200) NOT NULL
);

CREATE TABLE Livros (
	IdLivro		INT PRIMARY KEY IDENTITY,
	Titulo		VARCHAR(255),
	IdAutor		INT FOREIGN KEY REFERENCES Autores (IdAutor),
	IdGenero	INT FOREIGN KEY REFERENCES Generos (IdGenero)
);
 
SELECT * FROM Generos;
SELECT * FROM Autores;
SELECT * FROM Livros;

SELECT * FROM Autores;

INSERT INTO Autores(NomeAutor)
VALUES('Miguel'),('João'),('Venâncio');

SELECT * FROM Generos;
INSERT INTO Generos(NomeGenero)
VALUES('Suspense/Noir'),('Romance'),('Drama'),('Terror');

SELECT * FROM Livros;
INSERT INTO Livros(titulo,IdAutor,IdGenero)
VALUES('Do outro lado',1,1),('Cães também amam',2,2),('Um dia na guerra',3,3),('A casa assombrada',4,4);

SELECT NomeAutor from Autores;

SELECT NomeGenero from Generos;

SELECT Titulo from Livros;

SELECT Livros.Titulo, Autores.NomeAutor FROM Livros 
JOIN Autores ON Livros.IdAutor = Autores.IdAutor;


SELECT Livros.Titulo, Generos.NomeGenero FROM Livros 
JOIN Generos ON Livros.IdGenero = Generos.IdGenero 
JOIN Autores ON Livros.IdAutor = Autores.IdAutor;