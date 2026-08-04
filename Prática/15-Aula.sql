----- Mostre os 10 clientes da Twitch mais recentes, ordenando pela data de criação e quantidade de pontos.

SELECT *
FROM clientes
WHERE flTwitch = 1
ORDER BY DtCriacao DESC, qtdePontos ASC
LIMIT 10

