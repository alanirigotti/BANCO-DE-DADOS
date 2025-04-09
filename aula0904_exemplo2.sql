-- SUBSTRING é caracterizado pela manipulação de posicao em uma variavel, no caso do cpf temos 2 pontos e um traço

SELECT
nome, 
CONCAT(
	SUBSTRING(cpf,1,3), '.',
    SUBSTRING(cpf,4,3), '.',
    SUBSTRING(cpf,10,2) '.' 
) AS cpf, 
idade, 
CASE 
	WHEN idade < 18 THEN 'Adolescente'
    WHEN idade BETWEEN 18 AND 30 THEN 'Jovem'
	WHEN idade BETWEEN 30 AND 59 THEN 'Adulto'
    ELSE 'Idoso'
END AS faixa_etaria
FROM
funcionarios