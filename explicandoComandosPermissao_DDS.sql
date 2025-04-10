-- LISTA DE PERMISSÕES DO USUÁRIO ATUAL
SHOW GRANTS FOR CURRENT_USER;

-- CRIA UM NOVO USUÁRIO 
CREATE USER 'root'@'localhost' IDENTIFIED BY '123';
/*  @ é uma palavra chave que separa campos para nome usuario e caminho
	apenas cria, ele não tem acesso ao banco de dados no servidor
	Depois que eu crio o usuário, posso dar permissões especifico     
	'nomeusuario'@'localhost'; 
*/ 

-- ATRIBUIR PERMISSÕES PARA O USUÁRIO
GRANT SELECT, INSERT, UPDATE ON aula5.* TO 'root'@'localhost';
/* Pode ser tabela de um banco como nomebanco.nometabela, ou banco todo com = nomebanco.*
 se tiver problema com palavra reservada, usa-se ´ ´ na palavra
 select, insert, update exceto delete 
 select é só pra visualizar daí 
*/

-- TRIGGER : Toda mudança feito no banco é possível ter um log através do TRIGGER 

-- ATRIBUIR TODOS OS PRIVILÉGIOS PARA UM USUÁRIO (CUIDADO)
GRANT ALL PRIVILEGES ON aula5.* 'root'@'localhost';

-- REMOVER PRIVILÉGIOS DÁRIO
REVOKE ALL PRIVILEGES ON aula5.* FROM 'root'@'localhost';

-- Em relação a add ou remover usuário, usar o comando abaixo para limpar cache, log, etc
FLUSH PRIVILEGES;

-- APAGAR USUÁRIO
DROP USER 'root'@'localhost'; 

-- VER TODOS OS USUÁRIOS DO BANCO COM PERMISSÃO  
SELECT user, host FROM mysql.user 

-- ALTERAR SENHA DE UM USUÁRIO
ALTER USER 'root'@'localhost' IDENTIFIED BY '123';
