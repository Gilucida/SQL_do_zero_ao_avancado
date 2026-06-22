-- selecione todos os produtos que contém churn no nome

SELECT *

FROM produtos

--WHERE DescNomeProduto = 'Churn_10pp'
--OR DescNomeProduto = 'Churn_2pp'
--OR DescNomeProduto = 'Churn_5pp'

WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp')

--WHERE DescNomeProduto LIKE '%Churn%'

-- o like é case insensitive, ou seja, não diferencia maiúsculas de minúsculas.
-- o operador % é um coringa que representa qualquer sequência de caracteres, incluindo nenhuma.
-- o operador _ é um coringa que representa um único caractere.
-- LiKE gasta mais recursos do que o operador de comparação direta, então é importante usá-lo com cuidado, especialmente em grandes conjuntos de dados.
-- o operador LIKE é útil para encontrar padrões em strings, mas pode ser menos eficiente do que outros métodos de comparação direta, especialmente em grandes conjuntos de dados.
-- usar o LIKE quando eu não souber o dado que estou buscando

--WHERE DescCategoriaProduto = 'churn_model'
