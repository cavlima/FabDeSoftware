-- Criando um banco de dados e selecionando-o para utilizar
CREATE DATABASE loja;
USE loja;


-- Criação de 3 tabelas
CREATE TABLE cliente (
  id_cliente INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  sobrenome VARCHAR(50) NOT NULL,
  telefone VARCHAR(20) NOT NULL,
  PRIMARY KEY (id_cliente)
);

CREATE TABLE pedido (
  id_pedido INT NOT NULL AUTO_INCREMENT,
  data_pedido DATE NOT NULL,
  valor_total DECIMAL(10,2) NOT NULL,
  status_pedido VARCHAR(20) NOT NULL,
  PRIMARY KEY (id_pedido)
);

CREATE TABLE item_pedido (
  id_item_pedido INT NOT NULL AUTO_INCREMENT,
  produto VARCHAR(50) NOT NULL,
  quantidade INT NOT NULL,
  valor_unitario DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (id_item_pedido)
);

-- Adicionando a columa endereco_entrega do tipo VARCHAR na tabela pedido
ALTER TABLE pedido ADD COLUMN endereco_entrega VARCHAR(100);


-- Inserido dados na tabela cliente conforme a ordem que eu coloquei
INSERT INTO cliente (nome, sobrenome, telefone) 
VALUES 
('João', 'Silva', '(11) 1234-5678'), 
('Maria', 'Santos', '(22) 9876-5432'), 
('Pedro', 'Souza', '(33) 5555-5555');

-- Inserido dados na tabela pedido conforme a ordem que eu coloquei
INSERT INTO pedido (valor_total, data_pedido, status_pedido, endereco_entrega) 
VALUES 
( 150.00, '2022-01-01','Entregue', 'Rua A, 123'), 
( 80.50, '2022-02-14','Pendente', 'Rua B, 456'), 
(45.20, '2022-03-22', 'Cancelado', 'Rua C, 789');

-- Inserido dados na tabela item_pedido conforme a ordem que eu coloquei
INSERT INTO item_pedido ( produto, quantidade, valor_unitario) 
VALUES 
('Camisa', 2, 50.00), 
('Calça', 1, 60.00), 
('Tênis', 1, 80.50), 
('Moletom', 3, 50.00);

-- Selecionando cada tabela para checar se os dados foram inseridos realmente certos em cada tabela
SELECT *FROM cliente;
SELECT *FROM pedido;
SELECT *FROM item_pedido;