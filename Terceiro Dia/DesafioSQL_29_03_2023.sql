CREATE DATABASE hospital;
USE hospital;
DROP DATABASE hospital;

CREATE TABLE tb_paciente(
    nome VARCHAR(30),
    sexo CHAR(1),
	cpf VARCHAR(14),
    CHECK ( sexo IN ('M','F')),
    PRIMARY KEY(cpf)
);

CREATE TABLE tb_funcionario(
	id INT AUTO_INCREMENT,
	nome VARCHAR(20),
    sexo CHAR(1),
    CHECK ( sexo IN ('M','F')),
	PRIMARY KEY(id)
);

CREATE TABLE tb_medico(
	nome VARCHAR(30),
    sexo CHAR(1),
	crm INT,
    especializacao VARCHAR(50),
    CHECK ( sexo IN ('M','F')),
	PRIMARY KEY(crm)
);

SELECT *FROM tb_paciente; 
ALTER TABLE tb_paciente ADD COLUMN data_internacao DATE;
SELECT *FROM tb_paciente; 

SELECT *FROM tb_funcionario;
ALTER TABLE tb_funcionario ADD COLUMN  data_adm DATE;
SELECT *FROM tb_funcionario;


SELECT *FROM tb_medico;
ALTER TABLE tb_medico ADD COLUMN data_adm DATE;
SELECT *FROM tb_medico;

INSERT INTO tb_paciente (nome, sexo, cpf, data_internacao)
VALUES
('Pedro','M','123.123.123-1','2023-01-04'),
('Antonio','M', '111.111.111-1','2023-01-05'),
('Enilza','F', '222.222.222-1', '2023-01-06');
SELECT *FROM tb_paciente;

INSERT INTO tb_funcionario (nome, sexo, data_adm)
VALUES
('Matheus','M', '2023-02-16'),
('Paulo','M', '2023-02-16'),
('Ruane','F', '2023-02-16');
SELECT *FROM tb_funcionario;

INSERT INTO tb_medico (nome, sexo, crm, especializacao, data_adm)
VALUES
('Hermano','M',123,'Imunologia', '2021-01-04'),
('Joao','M',132,'Anestesiologia', '2021-01-06'),
('Thays','F',321,'Cancerologia', '2021-01-06');
SELECT *FROM tb_medico;

ALTER TABLE tb_paciente DROP COLUMN data_internacao;
SELECT *FROM tb_paciente;

ALTER TABLE tb_funcionario DROP COLUMN data_adm;
SELECT *FROM tb_funcionario;

ALTER TABLE tb_medico DROP COLUMN data_adm;
SELECT *FROM tb_medico;

SELECT *FROM tb_paciente WHERE sexo = 'M';

SELECT *FROM tb_funcionario WHERE sexo = 'F';

SELECT *FROM tb_medico WHERE especializacao = 'Imunologia';

SELECT *FROM ds_salaries;
ALTER TABLE ds_salaries RENAME COLUMN MyUnknownColumn TO id;
SELECT *FROM ds_salaries;



