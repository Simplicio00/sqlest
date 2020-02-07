USE Gufi_Manha;


--DQL



select NomeUsuario from Usuario;

select NomeFantasia,Endereco from Instituicao;

select TituloTipoEvento from TipoEvento;

select NomeEvento, DataEvento, Descricao from Evento;

select * from Evento where Evento.AcessoLivre = 1;

select Usuario.NomeUsuario, Evento.NomeEvento, Evento.DataEvento, Evento.Descricao, Presenca.Situacao from Presenca
inner join Usuario on Usuario.IdUsuario = Presenca.IdUsuario
inner join Evento on Evento.IdEvento = Presenca.IdEvento
where
NomeUsuario like '%Hugo%';

