Comandos:
CREATE DATABASE nome_da_base
USE nome_da_tabela
CREATE TABLE nome_da_tabela (id, nome e etc)
DESC nome_da_tabela 

CREATE TABLE tb_tipos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(20) NOT NULL
);

CREATE TABLE tb_bebidas (
     id INT PRIMARY KEY AUTO_INCREMENT,
     nome VARCHAR(20) NOT NULL,
     quantidade INT NOT NULL,
     detalhes VARCHAR(100) NOT NULL,
     FOREIGN KEY (tb_tipos.id) REFERENCES tb_tipos(tb_tipos.id)
);

ALTER TABLE tb_bebidas
    ADD tipos_id INTEGER,
    ADD CONSTRAINT FOREIGN KEY(tipos_id) REFERENCES tb_tipos(id);

INSERT INTO tb_tipos (descricao) VALUES ('Vodka');
INSERT INTO tb_tipos (descricao) VALUES ('Cachaça');
INSERT INTO tb_tipos (descricao) VALUES ('Cerveja');
INSERT INTO tb_tipos (descricao) VALUES ('Sem álcool');

INSERT INTO tb_bebidas (nome, quantidade, detalhes,tb_tipos.id) VALUES ('Voskorkvs', 12, '960ml', 1);

SELECT * FROM tb_tipos;

