----- Mostre qual dia da semana teve mais pedidos em 2025.

SELECT
    strftime('%w', substr(DtCriacao, 1, 10)) AS Dia_Semana,
    COUNT(DISTINCT IdTransacao) AS Qtde_Transacao,
    COUNT(IdTransacao) AS Qtde_Transacao2

FROM transacoes

WHERE substr(DtCriacao, 1, 4) = '2025'

GROUP BY 1
ORDER BY 2 DESC
