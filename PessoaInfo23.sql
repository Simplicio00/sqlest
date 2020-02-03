CREATE DATABASE PessoaInfo_Tarde;

USE PessoaInfo_Tarde;




CREATE TABLE Telefones(
Id_Telefone int identity primary key,
Numero_Telefone int not null
);

CREATE TABLE Emails(
Id_Email int identity primary key,
Nome_Email varchar(50) NOT NULL
);

CREATE TABLE CNH(
Id_CNH int identity primary key,
Habilitacao bit NOT NULL
);


CREATE TABLE Pessoas(
Id_Pessoa int identity primary key,
Nome_Pessoa VARCHAR(100) NOT NULL,
-- estrangeiras
Id_Telefone int foreign key references Telefones(Id_Telefone),
Id_Email int foreign key references Emails(Id_Email),
Id_CNH int foreign key references CNH(Id_CNH)
);



INSERT INTO Telefones(Numero_Telefone)
VALUES(9090-8716),(9090-8677);

INSERT INTO Emails(Nome_Email)
VALUES('carlinhos@sd.com'),('GabiSousa@dalls.com');

INSERT INTO CNH(Habilitacao)
VALUES(1),(0);

INSERT INTO Pessoas(Nome_Pessoa, Id_Telefone, Id_Email, Id_CNH)
VALUES('Carlos Augusto Ferreira',1,1,1),('Gabriela Brás de Sousa',2,2,2);

SELECT Pessoas.Nome_Pessoa, Telefones.Numero_Telefone FROM Pessoas 
INNER JOIN Telefones ON Telefones.Id_Telefone = Pessoas.Id_Telefone; 

SELECT Pessoas.Nome_Pessoa, Emails.Nome_Email FROM Pessoas
INNER JOIN Emails ON Emails.Id_Email = Pessoas.Id_Email;


SELECT Pessoas.Nome_Pessoa, Emails.Nome_Email, CNH.Habilitacao FROM Pessoas
INNER JOIN CNH ON CNH.Id_CNH = Pessoas.Id_CNH
INNER JOIN Emails ON Emails.Id_Email = Pessoas.Id_Email;
