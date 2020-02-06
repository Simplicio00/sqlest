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

INSERT INTO Album(Nome, DataLancamento, Localizacao, QtdMinutos, IdArtista, IdEstilo)
VALUES('Carambolas','25/01/1989','Macapá', 350,1,1);

SELECT * FROM Album;

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

SELECT * FROM Album WHERE IdAlbum >1;

SELECT * FROM Album WHERE IdAlbum >= 1;


-- OR // OU 

--filtrar por caso nulo

SELECT Nome, QtdMinutos FROM Album
WHERE (DataLancamento IS NULL) OR (Localizacao IS NULL);

-- consultar dado por conteúdo no inicio 

SELECT IdAlbum, Nome FROM Album
WHERE Nome LIKE 'Album2%';
-- WHERE Nome LIKE '%Album2%'; pega o conteúdo no meio da frase


--ORDENAÇÃO
SELECT Nome from Album order by Nome;

SELECT IdAlbum, Nome, QtdMinutos FROM Album
order by QtdMinutos;

-- Ordenaçao invertida ou decrescente 
SELECT IdAlbum, Nome, QtdMinutos FROM Album
order by QtdMinutos DESC;
-- ascendente
--SELECT IdArtista, Nome from Artistas AND IdAlbum, Nome, QtdMinutos, DataLancamento FROM Album
--order by DataLancamento ASC;


-- Contagem
SELECT COUNT(IdAlbum) FROM Album;

SELECT IdAlbum, IdArtista, Nome FROM Album
WHERE IdArtista=1;

SELECT IdAlbum, Nome, DataLancamento FROM Album
WHERE DataLancamento LIKE '%1970-01-25%';

SELECT Nome, Datalancamento, IdArtista from Album
order by DataLancamento ASC; 




--exemplo
USE Optus_Tarde;
--selecionar os albuns do mesmo artista
select Artistas.Nome, Album.Nome FROM Album
INNER JOIN Artistas on Artistas.IdArtista = Album.IdArtista
WHERE Artistas.Nome like '%ZECA PAGODINHO%';
-- WHERE Artistas.IdArtista = 1;

GO

-- selecionar os albuns lançados na mesma data
SELECT * FROM Album WHERE DataLancamento 
LIKE '%1970%';
--com inner join
select * from Artistas
inner join Album ON Artistas.IdArtista = Album.IdArtista
WHERE DataLancamento LIKE '%1970%';
 
-- selecionar albuns e artistas e ordenar por data de lançamento
--Do mais antigo para o mais recente

SELECT DataLancamento, Nome FROM Album order by DataLancamento ASC;

--c join
select Artistas.Nome as NomeArtista, 
Album.Nome as NomeAlbum, DataLancamento as Lancamento FROM Artistas
inner join Album on Album.IdArtista =Artistas.IdArtista
ORDER BY Lancamento asc;



-- selecionar artistas do mesmo estilo musical

select Artistas.Nome, Estilos.Nome, Album.Nome from Album
JOIN Estilos on Estilos.IdEstilo = Album.IdEstilo
INNER JOIN Artistas on Artistas.IdArtista = Artistas.IdArtista
WHERE Estilos.Nome like '%pagode%';

SELECT Estilos.Nome, Album.Nome from Album
JOIN Estilos on Estilos.IdEstilo = Album.IdEstilo;