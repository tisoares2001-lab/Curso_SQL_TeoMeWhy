----- Mostre qual produto teve mais pontos transacionados.
SELECT
    IdProduto,
    SUM(vlProduto * qtdePontos) AS TotalPontos
FROM transacoes
GROUP BY IdProduto
ORDER BY TotalPontos DESC
LIMIT 1;

