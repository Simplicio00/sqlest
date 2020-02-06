
CREATE DATABASE PessoaDB;
GO

USE PessoaDB;
GO

--DML

CREATE TABLE Telefones(
	Id_Telefone INT IDENTITY PRIMARY KEY,
	Descricao VARCHAR (255) NOT NULL
);
GO


CREATE TABLE CNHs(
	Id_CNH INT IDENTITY PRIMARY KEY,
	Descricao VARCHAR (255) NOT NULL
);
GO

CREATE TABLE Pessoas(
	Id_Pessoa INT IDENTITY PRIMARY KEY,
	Id_CNH INT FOREIGN KEY REFERENCES CNHs(Id_CNH) NOT NULL,
	Id_Telefone INT FOREIGN KEY REFERENCES Telefones(Id_Telefone),
	Nome VARCHAR (255) NOT NULL
);


CREATE TABLE Emails(
	Id_Email INT IDENTITY PRIMARY KEY,
	Id_Pessoa INT FOREIGN KEY REFERENCES Pessoas (Id_Pessoa) NOT NULL,
	Descricao VARCHAR (255) NOT NULL
);
GO

insert into Telefones(Descricao)
VALUES('9053-4333');

insert into CNHs(Descricao)VALUES
('Vencida'),('Não tem');

insert into Pessoas(Nome,Id_CNH,Id_Telefone)
VALUES('Marcos Paulo de Souza',1,1),(' Abmael Magalhães Pinto',1,2);

insert into Emails(Descricao,Id_Pessoa)
values('Marquinhos@gmail.com',1),('marcPaulo@hzts.com',1),('AbmaelMP@terra.com',2);



SELECT * FROM PessoaDB.INFORMATION_SCHEMA.TABLES;

