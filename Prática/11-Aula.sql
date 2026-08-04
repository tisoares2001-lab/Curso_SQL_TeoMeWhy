----- Mostre os clientes e crie uma nova coluna mostrando o número do dia da semana da data de criação.

SELECT *,
       DtCriacao,
       strftime('%w', datetime(substr(DtCriacao,1, 10))) AS Data_nova
FROM clientes
LIMIT 5;

----- Mostre todos os clientes e crie uma nova coluna com o número do dia da semana da data de criação.

SELECT *, 
       DtCriacao, 
       strftime('%w', datetime(substr(DtCriacao, 1, 10))) AS Nova_Data
FROM clientes;