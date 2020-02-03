USE Locadora_Tarde;

--DQL


SELECT VEICULO.Placa, CLIENTE.Nome, ALUGUEL.Data_Inicio, ALUGUEL.Data_Fim, MODELO.Nome
FROM ALUGUEL
inner join CLIENTE on CLIENTE.Id_Cliente = ALUGUEL.Id_Cliente
inner join VEICULO on VEICULO.Id_Veiculo = ALUGUEL.Id_Veiculo
INNER JOIN MODELO on MODELO.Id_Modelo = VEICULO.Id_Modelo;
