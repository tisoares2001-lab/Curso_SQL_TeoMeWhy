----- Faça a soma dos pontos da coluna e separe os pontos positivos dos negativos

SELECT
       SUM(qtdePontos) AS SOMAqtdePontos,

       SUM(CASE
           WHEN qtdePontos > 0 THEN qtdePontos
       END) AS SOMAqtdePontosPositiva,

       SUM(CASE
           WHEN qtdePontos < 0 THEN qtdePontos
       END) AS SOMAqtdePontosNegativa

FROM transacoes
WHERE DtCriacao >= '2025-07-01'
AND DtCriacao <= '2025-08-01'








