 ----- Como posso acompanhar o engajamento diário de cada cliente entre 25 e 29 de agosto de 2025, mostrando o volume acumulado de transações dele e uma comparação direta (razão de crescimento) entre o que ele transacionou hoje versus a sua última atividade?"

WITH tb_cliente_dia AS (
    SELECT idCliente,
           substr(DtCriacao,1,10) AS dtDia,
           count(DISTINCT IdTransacao) AS qtdeTransacao
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
      AND DtCriacao < '2025-08-30'
    GROUP BY IdCliente, dtDia
),

tb_lag AS (
    SELECT *,
           sum(qtdeTransacao) OVER (PARTITION BY idCliente ORDER BY dtDia) AS Acumulado,
           lag(qtdeTransacao) OVER (PARTITION BY idCliente ORDER BY dtDia) AS LagTransacao
    FROM tb_cliente_dia 
)

SELECT *,
       1.0 * qtdeTransacao / LagTransacao AS RazaoTransacoes
FROM tb_lag;


-----Qual é a frequência média de retorno dos nossos clientes? Calcule qual é o intervalo médio de dias que cada usuário leva entre uma transação e outra durante o ano de 2025.

WITH cliente_dia AS (
    SELECT DISTINCT 
        idCliente,
        substr(DtCriacao, 1, 10) AS dtDia   
    FROM transacoes
    WHERE substr(DtCriacao, 1, 4) = '2025'
),

tb_lag AS (
    SELECT *, 
        lag(dtDia) OVER (PARTITION BY idCliente ORDER BY dtDia) AS lagDia
    FROM cliente_dia -- Ponto e vírgula removido daqui
),

tb_diff_dt AS (
    SELECT *,
        julianday(dtDia) - julianday(lagDia) AS dtDiff
    FROM tb_lag
)

SELECT 
    idCliente, 
    avg(dtDiff) AS AvgDtDiff 
FROM tb_diff_dt
GROUP BY idCliente;


