
-----Quais categorias de produtos apresentaram baixo volume de vendas (menos de 1.000 transações) ao longo de todo o ano de 2024, ordenadas daquelas com maior volume para as de menor volume?

SELECT
        t3.DescCategoriaProduto,
        COUNT(DISTINCT t1.IdTransacao)
    FROM transacoes AS t1

    LEFT JOIN transacao_produto AS t2
    ON t1.IdTransacao = t2.IdTransacao

    LEFT JOIN produtos AS t3
    ON t2.IdProduto = t3.IdProduto

    WHERE t1.DtCriacao >= '2024-01-01'

    AND t1.DtCriacao < '2025-01-01'

    GROUP BY t3.DescCategoriaProduto
        HAVING COUNT(DISTINCT t1.IdTransacao) < 1000

    ORDER BY COUNT(DISTINCT t1.IdTransacao) DESC;

