----- Lista de transações com o produto "resgatar pônei"
SELECT *

FROM transacao_produto AS t1

WHERE t1.idProduto =
    (
        SELECT idProduto
        FROM produtos
        WHERE DescNomeProduto = 'Resgatar Ponei'
    )

