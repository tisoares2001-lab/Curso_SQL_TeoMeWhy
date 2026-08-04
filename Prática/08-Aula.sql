----- Selecione o ID das transações da tabela transacoes entre 2025-07-01 e 2025-08-01 e separe os pontos positivos dos negativos.
SELECT IdTransacao,
       qtdePontos,
       CASE
           WHEN qtdePontos > 0 THEN qtdePontos
       END AS qtdePontosPositiva,

       CASE
           WHEN qtdePontos < 0 THEN qtdePontos
       END AS qtdePontosNegativa
FROM transacoes
WHERE DtCriacao >= '2025-07-01'
AND DtCriacao <= '2025-08-01'
ORDER BY qtdePontos ASC