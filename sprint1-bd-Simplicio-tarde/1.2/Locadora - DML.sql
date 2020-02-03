USE Locadora_Tarde;

--DML


INSERT INTO EMPRESA(Nome)values('Locadoras de Veículos São Paulo S.A');
go
INSERT INTO MARCA(Nome)values('GM'),('Ford'),('Fiat');
go
INSERT INTO MODELO(Nome,Id_Marca)VALUES('Onix',1),('Fiesta',2),('Argo',3);
go
insert into VEICULO(Placa,id_Empresa,Id_Modelo)values('KYF321',1,1),('BR184',1,2),('SPDD123',1,3);
go
insert into CLIENTE(Nome,cpf)values('João De Assis','844.333.934-x'),('Manoel Nogueira Ferraz','877-321-983-X'),('Antônio Edon medeiros','033-231-944');

INSERT INTO ALUGUEL(Data_Inicio,Data_Fim,Id_Cliente,Id_Veiculo)values('21/02/2019','27/02/2019',1,1);


