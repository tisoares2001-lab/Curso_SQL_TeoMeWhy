----- Mostre qual cliente juntou mais pontos em 2025-05.
SELECT idCliente,
       SUM(qtdePontos) AS Total_Pontos
FROM transacoes
WHERE DtCriacao >= '2025-05-01'
AND DtCriacao < '2025-06-01'
AND qtdePontos > 0
GROUP BY idCliente
ORDER BY SUM(qtdePontos) DESC