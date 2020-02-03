USE PessoaDB;
GO

SELECT * FROM Pessoas;

SELECT Pessoas.Nome, Emails.Descricao, Telefones.Descricao, CNHs.Descricao from Pessoas
inner join Emails on Emails.Id_Pessoa = Pessoas.Id_Pessoa
inner join Telefones on Telefones.Id_Telefone = Pessoas.Id_Telefone
inner join CNHs on CNHs.Id_CNH = CNHs.Id_CNH;

SELECT * FROM PessoaDB.INFORMATION_SCHEMA.TABLES;

