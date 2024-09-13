CREATE DATABASE exemplo_1e;
USE exemplo_1e;

CREATE TABLE produtos(
	cod_prod INTEGER PRIMARY KEY,
	nome VARCHAR(50),
	preco NUMERIC(10,2)
);

CREATE TABLE pedidos(
	cod_pedido INTEGER PRIMARY KEY,
    cod_prod INTEGER,
    quantidade INTEGER,
    FOREIGN KEY(cod_prod) REFERENCES produtos(cod_prod)
);