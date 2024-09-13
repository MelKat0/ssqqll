CREATE USER 'rita li'@'localhost' identified by '235';

RENAME USER 'rita li'@'localhost' TO 'rita lee'@'localhost';

DROP USER 'rita lee'@'localhost';

#--------------------------------------------------------------------------------#

SELECT user, HOST FROM MYSQL.user;

CREATE USER 'bulba'@'localhost' identified by '632';

RENAME USER 'bulba'@'localhost' TO 'moranguinho'@'localhost';

DROP USER 'moranguinho'@'localhost';

#--------------------------------------------------------------------------------#

CREATE USER 'morango'@'localhost' identified by '235';

ALTER USER 'morango'@'localhost' identified by '632';

GRANT ALL PRIVILEGES ON empre_1e TO 'morango'@'localhost';

SHOW GRANTS FOR 'morango'@'localhost';

REVOKE ALL PRIVILEGES ON empre_1e FROM 'morango'@'localhost';

GRANT INSERT ON empre_1e.* TO 'morango'@'localhost';

GRANT SELECT ON empre_1e.* TO 'morango'@'localhost';

GRANT DELETE ON empre_1e.* TO 'morango'@'localhost';

GRANT UPDATE ON empre_1e.* TO 'morango'@'localhost';

#--------------------------------------------------------------------------------#

