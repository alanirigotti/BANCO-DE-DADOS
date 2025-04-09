/* 

6. DESAFIO - MONTE UMA CONSULTA COM AS REGRAS ABAIXO
Traga o nome do produto, o preço, a categoria
Filtre os produtos com preço entre X e Y
Mostre somente as categorias ativas.
Só traga os produtos cujo nome contenha uma palavra específica 
Agrupe os resultados por categoria.
Mostre também:
	•	A quantidade de produtos por categoria.
	•	O preço médio dos produtos daquela categoria.
	•	O produto mais caro da categoria.
*/

-- Comando para configurar o group by
-- SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

-- Explicação
-- p se torna um alias, um apelido, para a tabela produtos
-- ele é mais eficiente que usar operador lógica preco > 100 e 300 < preco, pois faz uma varredura enquanto os operadores verifica linha por linha na tabela
-- LIKE nao diferencia letras maiusculas e minusculas
SELECT 
p.nome,
p.preco,
c.titulo,
COUNT(p.id) AS total_produtos,
AVG(p.preco) AS valor_medio,
MAX(p.preco) AS mais_caro
FROM produtos p 
INNER JOIN categorias c ON c.id = p.from_categorias -- juntar tabelas
WHERE 
preco between 100 AND 300 AND
c.ativo = 1 AND
p.nome LIKE '%esportivo%'
GROUP BY c.id 