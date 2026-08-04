----- Faça uma lista de transação com apenas 1 ponto

SELECT qtdePontos, qtdePontos AS Num_pontos
FROM transacoes
WHERE QtdePontos = 1

  