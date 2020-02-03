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
VALUES(9096-8777);

INSERT INTO Emails(Nome_Email)
VALUES('carbitter@sd.com');

INSERT INTO CNH(Habilitacao)
VALUES(1);

INSERT INTO Pessoas(Nome_Pessoa, Id_Telefone, Id_Email, Id_CNH)
VALUES('Carlos Andrada Bittencourt',3,4,3);

SELECT Pessoas.Nome_Pessoa, Telefones.Numero_Telefone FROM Pessoas 
INNER JOIN Telefones ON Telefones.Id_Telefone = Pessoas.Id_Telefone; 

SELECT Pessoas.Nome_Pessoa, Emails.Nome_Email FROM Pessoas
INNER JOIN Emails ON Emails.Id_Email = Pessoas.Id_Email;


SELECT Pessoas.Nome_Pessoa, Emails.Nome_Email, Telefones.Numero_Telefone, CNH.Habilitacao FROM Pessoas
INNER JOIN CNH ON CNH.Id_CNH = Pessoas.Id_CNH
INNER JOIN Emails ON Emails.Id_Email = Pessoas.Id_Email
INNER JOIN Telefones ON Telefones.Id_Telefone = Pessoas.Id_Telefone;


SELECT * FROM Emails;