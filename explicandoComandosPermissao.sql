-- LISTA DE PERMISSÕES DO USUÁRIO ATUAL
SHOW GRANTS FOR CURRENT_USER;

-- CRIA UM NOVO USUÁRIO 
-- @ é uma palavra chave que separa campos para nome usuario e caminho
CREATE USER 'teste'@'localhost' IDENTIFIED BY '123';

-- Depois que eu crio o usuário, posso dar permissões especifico 
-- ATRIBUIR PERMISSÕES PARA O USUÁRIO
-- Pode ser tabela de um banco (nomebanco.nometabela), ou banco todo (nomebanco.*)
GRANT SELECT ON aula5.* TO 'teste'@'localhost';

-- se tiver problema com palavra reservada
GRANT SELECT ON `aula5`.* TO 'teste'@'localhost';
