----- Mostre qual produto foi mais transacionado.

SELECT
    IdProduto,
    COUNT(*) AS Total_Transacoes

FROM transacao_produto

GROUP BY IdProduto
ORDER BY COUNT(*) DESC
LIMIT 1

 