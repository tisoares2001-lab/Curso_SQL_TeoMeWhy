 ----- Volume total de clientes únicos que realizaram transações no mês de julho de 2025.
 SELECT COUNT(DISTINCT idCliente)
FROM transacoes
 WHERE DtCriacao >= '2025-07-01'
    AND DtCriacao <= '2025-08-01'
ORDER BY DtCriacao ASC









