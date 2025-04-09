CREATE TABLE alunos(
	nome VARCHAR(45) NOT NULL,
    nota1 float not null,
    nota2 float not null,
    nota3 float not null
);

SET SESSION sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

SELECT 
nome,
nota1,
nota2,
nota3,
AVG((nota1 + nota2 + nota3)/3)  as media,
CASE  
	WHEN ((nota1 + nota2 + nota3)/3) < 6 THEN 'reprovado'
    ELSE 'aprovado' 
END AS 'situacao'
FROM alunos

-- base de dados
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Ana Souza', 7.5, 8.0, 6.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Carlos Lima', 5.0, 6.0, 7.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Fernanda Costa', 9.0, 7.5, 8.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Lucas Pereira', 6.0, 5.5, 7.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Mariana Rocha', 8.5, 9.0, 9.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Paulo Silva', 6.5, 7.0, 8.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Roberta Almeida', 7.0, 8.0, 6.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('João Martins', 8.0, 7.5, 8.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Maria Oliveira', 9.0, 8.5, 7.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Tiago Santos', 5.5, 6.5, 6.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Isabela Pereira', 8.0, 7.0, 7.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Gustavo Rocha', 6.0, 6.5, 7.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Juliana Costa', 7.5, 8.5, 7.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Marcelo Lima', 8.5, 9.0, 8.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Robson Silva', 5.0, 4.5, 6.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Amanda Santos', 9.0, 8.0, 7.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Rafael Oliveira', 6.0, 6.0, 6.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Tatiane Rocha', 7.0, 8.5, 9.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Pedro Costa', 8.0, 8.5, 9.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Luciana Pereira', 7.0, 6.5, 8.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Felipe Almeida', 9.0, 9.5, 9.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Sabrina Martins', 6.5, 7.0, 8.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Thiago Oliveira', 7.5, 8.0, 7.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Carla Lima', 6.0, 7.5, 8.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Vanessa Rocha', 7.5, 7.0, 8.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Adriano Santos', 8.0, 8.5, 9.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Juliana Lima', 5.5, 6.0, 5.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Daniela Oliveira', 7.0, 7.5, 6.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Roberta Martins', 9.0, 8.5, 7.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Eduardo Costa', 8.5, 7.0, 7.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Patricia Pereira', 6.5, 6.0, 7.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Henrique Rocha', 8.0, 8.5, 8.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Sandra Lima', 7.0, 6.5, 8.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Murilo Costa', 6.5, 7.0, 7.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Cláudia Pereira', 9.5, 9.0, 9.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Mário Santos', 7.0, 7.5, 6.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Carla Rocha', 8.0, 7.5, 8.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Leandro Oliveira', 7.5, 6.0, 7.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Ana Paula Lima', 9.0, 8.0, 7.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Guilherme Pereira', 5.0, 6.5, 5.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Cássia Santos', 8.5, 9.0, 8.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Rodrigo Oliveira', 6.0, 7.0, 7.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Joana Rocha', 7.5, 7.5, 6.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Marcela Costa', 9.0, 8.5, 8.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Vinícius Pereira', 6.5, 7.5, 8.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Tânia Lima', 7.0, 6.0, 8.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Bruna Santos', 5.0, 6.5, 6.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Felipe Rocha', 8.5, 9.0, 9.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Raquel Oliveira', 6.5, 7.0, 8.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Elenita Costa', 7.5, 8.0, 6.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Fábio Pereira', 8.5, 8.0, 7.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Márcia Rocha', 6.0, 7.5, 8.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Beatriz Silva', 7.0, 8.5, 7.5);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Victor Almeida', 8.5, 7.5, 8.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Lúcia Martins', 5.5, 6.5, 7.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('André Oliveira', 9.0, 8.0, 9.0);
INSERT INTO alunos (nome, nota1, nota2, nota3) VALUES ('Beatriz Rocha', 7.0, 7.5, 6.0);

