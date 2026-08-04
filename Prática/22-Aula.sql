 --- Quais foram as vendas diárias de transações entre 25/08/2025 e 29/08/2025 e qual foi o comportamento de crescimento acumulado desse volume no período?


WITH tb_sumario_dias AS 
    (
 SELECT substr(DtCriacao, 1, 10)  AS dtDia,
        count(DISTINCT IdTransacao) AS qtdeTransacao
 FROM transacoes

 WHERE  DtCriacao >= '2025-08-25'
 AND DtCriacao < '2025-08-30'

 GROUP BY dtDia
    )

    SELECT *,
        sum(qtdeTransacao) OVER (PARTITION BY 1 ORDER BY dtDia) AS qtdeTransacaoAcumulada
    FROM tb_sumario_dias
