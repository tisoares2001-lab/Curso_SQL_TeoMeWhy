----- Mostre o valor médio de pontos positivos por dia.
SELECT
    SUM(qtdePontos) AS Total_Pontos,
    COUNT(DISTINCT SUBSTR(DtCriacao, 1, 10)) AS Qtde_Dias_Unicos,
    SUM(qtdePontos) / COUNT(DISTINCT SUBSTR(DtCriacao, 1, 10)) AS Media_pontos_Dia
FROM transacoes
WHERE qtdePontos > 0