-- 1) Lista todos os produtos com suas respectivas categorias
SELECT 
categorias.titulo,
produtos.nome,
categorias.ativo,
produtos.preco
FROM
produtos
INNER JOIN categorias ON produtos.from_categorias = categorias.id
where ativo = 1;

-- 2) Liste todos os produtos, com ou sem categoria 
SELECT * FROM produtos;
 
-- 3) Liste os produtos que pertecem as categorias ativas
SELECT 
categorias.titulo,
categorias.ativo,
produtos.nome
FROM
produtos
INNER JOIN categorias ON produtos.from_categorias = categorias.id
WHERE ativo = 1;

-- 4) LISTA QUANTOS PRODUTOS EXISTEM POR CATEGORIA 
SELECT 
from_categorias,
categorias.titulo,
COUNT(produtos.id) AS quantidade
FROM produtos 
INNER JOIN categorias ON categorias.id = produtos.from_categorias 
GROUP BY from_categorias;

-- 5) Liste o produto mais cara de cada categoria
SELECT 
from_categorias,
categorias.titulo,
produtos.preco 
FROM produtos
INNER JOIN categorias ON categorias.id = produtos.from_categorias
GROUP BY from_categorias
ORDER BY preco ASC
LIMIT 5;  

SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));	

-- 6) DESAFIO 0 MONTE UMA CONSULTA COM AS REGRAS ABAIXO Traga o nome do produto, o preço, a categoria
-- Filtre os produtos com preço entre X e Y
-- Mostre somente as categorias ativas.
-- Só traga os produtos cujo nome contenha uma palavra específica 
-- Agrupe os resultados por categoria.
-- Mostre também:
	-- •	A quantidade de produtos por categoria.
	-- •	O preço médio dos produtos daquela categoria.
	-- •	O produto mais caro da categoria.

SELECT 
categorias.titulo,
produtos.nome, 
produtos.preco,
AVG(preco) AS precoMedio,
MAX(preco) AS precoMaximo
FROM
produtos
INNER JOIN categorias ON categorias.id = produtos.from_categorias
WHERE ((preco BETWEEN 10 AND 120) AND categorias.ativo = 1) AND
nome LIKE "%a%"
GROUP BY from_categorias
order by preco ASC 
   



