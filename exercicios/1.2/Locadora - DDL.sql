CREATE DATABASE Locadora_Tarde;

go
USE Locadora_Tarde;

--ddl

CREATE TABLE EMPRESA(
Id_Empresa int identity primary key,
Nome varchar(50) not null
);

go

CREATE table MARCA(
Id_Marca int primary key identity,
Nome varchar(50)
);

go

CREATE table MODELO(
Id_Modelo int primary key identity,
Id_Marca int foreign key references MARCA(Id_Marca),
Nome VARCHAR(40)
);

go

CREATE table VEICULO(
Id_Veiculo int identity primary key,
id_Empresa int foreign key references EMPRESA(Id_Empresa),
Id_Modelo int foreign key references MODELO(Id_Modelo),
Placa varchar(100) not null
);

go

CREATE TABLE CLIENTE(
Id_Cliente int identity primary key,
Nome varchar(50),
cpf varchar(50)
);

go

CREATE TABLE ALUGUEL(
Id_Aluguel int primary key identity,
Id_Cliente int foreign key references CLIENTE(Id_Cliente),
Id_Veiculo int foreign key references VEICULO(Id_Veiculo),
Data_Inicio date,
Data_Fim date
);



