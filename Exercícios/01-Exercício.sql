----- Liste todas as transações adicionando uma nova coluna sinalizando "alto", "medio" e "baixo" para o valor dos pontos.
SELECT IdTransacao,
       qtdePontos,
       CASE 
           WHEN qtdePontos < 10 THEN 'baixo'
           WHEN qtdePontos < 500 THEN 'medio'
           ELSE 'alto'
       END AS NivelPontos
FROM transacoes
ORDER BY qtdePontos DESC