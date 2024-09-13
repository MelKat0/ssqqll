#----------------------------------------------------------------------------#

CREATE DATABASE empresa_db;

CREATE USER 'funcionario'@'localhost' identified by '235';

GRANT SELECT ON empresa_db.* TO 'funcionario'@'localhost';

CREATE USER 'gerente'@'localhost' identified by '632';

GRANT SELECT ON empresa_db.* TO 'gerente'@'localhost';
GRANT INSERT ON empresa_db.* TO 'gerente'@'localhost';
GRANT UPDATE ON empresa_db.* TO 'gerente'@'localhost';

CREATE USER 'admin'@'localhost' identified by '858';

GRANT ALL PRIVILEGES ON empresa_db.* TO 'admin'@'localhost';

#----------------------------------------------------------------------------#]

REVOKE INSERT ON empresa_db.* FROM 'gerente'@'localhost';

RENAME USER 'funcionario'@'localhost' TO 'assistente'@'localhost';

ALTER USER 'gerente'@'localhost' identified by 'nova_senha_gerente';

SHOW GRANTS FOR 'assistente'@'localhost';
SHOW GRANTS FOR 'gerente'@'localhost';
SHOW GRANTS FOR 'admin'@'localhost';

DROP USER 'assistente'@'localhost';

#----------------------------------------------------------------------------#