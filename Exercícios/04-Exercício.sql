----- Mostre qual cliente fez mais transações no ano de 2024.
SELECT idCliente AS Identificacao_Cliente,
       COUNT(*) AS Total_Transacoes
FROM transacoes
WHERE DtCriacao >= '2024-01-01'
AND DtCriacao < '2025-01-01'
GROUP BY idCliente
ORDER BY COUNT(*) DESC
LIMIT 1