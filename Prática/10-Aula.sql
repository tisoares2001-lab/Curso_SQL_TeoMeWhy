----- Faça a média de saldo em conta dos nossos usuários.

SELECT 
    ROUND(AVG(qtdePontos), 2) AS MediaPontosClientes,
    MIN(qtdePontos) AS MinPontosClientes,
    MAX(qtdePontos) AS MaxPontosClientes
FROM clientes