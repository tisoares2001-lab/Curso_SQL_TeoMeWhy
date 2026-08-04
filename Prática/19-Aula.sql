----- Qual é a quantidade de transações por categoria de produto?"

SELECT 
        t2.DescCategoriaProduto,
        COUNT(DISTINCT t1.idTransacaoProduto) 
FROM transacao_produto AS t1
LEFT JOIN produtos as t2
ON t1.IdProduto = t2.IdProduto
GROUP BY t2.DescCategoriaProduto

