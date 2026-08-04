----- Conte quantos produtos são da categoria "rpg".
SELECT COUNT(*) AS Total_ProdutosRPG
FROM produtos
WHERE DescCategoriaProduto = 'rpg'