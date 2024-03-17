-- TABELAS SPRINT 1

-- CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE TransControl;
USE TransControl;





-- TABELA 1 (CADASTRO)
USE TransControl;

CREATE TABLE Cadastro (
idEmpresa int primary key auto_increment,
razaoSocial varchar(255) NOT NULL,
nomeFantasia varchar(255),
email varchar(255) NOT NULL,
logradouro varchar(255) NOT NULL,
CNPJ char(14) unique NOT NULL,
telefone char(14) NOT NULL,
senha varchar(20) NOT NULL
) auto_increment = 1;

DESCRIBE Cadastro;
SELECT * FROM Cadastro;





-- TABELA 2 (MODELO DO ONIBUS)
USE TransControl;

CREATE TABLE ModeloOnibus(
	idOnibus int primary key auto_increment NOT NULL,
    qtdPortas int NOT NULL,
    capacidade int NOT NULL,
    placa char(7),
    CONSTRAINT chkPortas CHECK(qtdPortas >= 2 AND qtdPortas <= 8)
) auto_increment = 1;				

DESCRIBE ModeloOnibus;
SELECT * FROM ModeloOnibus;





-- TABELA 3 (SENSORES)
USE TransControl;

CREATE TABLE sensor(
	idSensor int primary key auto_increment,
	portaSensor int NOT NULL,
     CONSTRAINT chkPorta CHECK(portaSensor = 'SAIDA' OR portaSensor = 'ENTRADA')
) auto_increment = 1;

DESCRIBE Sensor;
SELECT * FROM Sensor;





-- TABELA 4 (DADOS)
USE TransControl;

CREATE TABLE dados(
	idDado int primary key auto_increment,
    ativacao tinyint,
	horarioAtivacao date,
    CONSTRAINT chkDado CHECK(ativacao = 0 OR ativacao = 1)
    )auto_increment = 1;

DESCRIBE dadoSensor;
SELECT * FROM dadoSensor;