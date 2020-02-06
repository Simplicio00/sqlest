USE PessoaDB;
GO

select * from PessoaDB;

insert into Telefones(Descricao)
VALUES('9053-4333');

insert into CNHs(Descricao)VALUES
('Vencida'),('Não tem');

insert into Pessoas(Nome,Id_CNH,Id_Telefone)
VALUES('Marcos Paulo de Souza',1,1),(' Abmael Magalhães Pinto',1,2);

insert into Emails(Descricao,Id_Pessoa)
values('Marquinhos@gmail.com',1),('marcPaulo@hzts.com',1),('AbmaelMP@terra.com',2);

SELECT * FROM PessoaDB.INFORMATION_SCHEMA.TABLES;


