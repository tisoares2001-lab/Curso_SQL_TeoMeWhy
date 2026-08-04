----- Categorização de clientes em níveis (tiers) baseada na quantidade de pontos.
 SELECT
    idCliente,
    qtdePontos,
    CASE
        WHEN qtdePontos <= 500 THEN 'PONEI'
        WHEN qtdePontos BETWEEN 501 AND 1000 THEN 'PONEI PREMIUM'
        WHEN qtdePontos BETWEEN 1001 AND 5000 THEN 'MAGO APRENDIZ'
        WHEN qtdePontos BETWEEN 5001 AND 10000 THEN 'MAGO MESTRE'
        ELSE 'Mago Supremo'
    END AS Classificacao
FROM clientes;