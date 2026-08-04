 ----- Mostre os clientes que somaram 4 mil pontos ou mais entre 2025-07-01 e 2025-08-01.
SELECT idCliente,
        sum(qtdePontos),
        count(IdTransacao)

FROM transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao <='2025-08-01'

GROUP BY idCliente
        HAVING SUM(qtdePontos) >= 4000
ORDER BY sum(qtdePontos) DESC

 
 