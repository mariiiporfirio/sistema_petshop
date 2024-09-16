CREATE DATABASE sistemapetshop;

CREATE TABLE cliente(
    cpf CHAR(15) primary key NOT NULL,
    nomecliente VARCHAR(200) NOT NULL,
    telefonecliente CHAR(15) NOT NULL
);

CREATE TABLE animal(
    raca CHAR(20) NOT NULL,
    nomeanimal VARCHAR(50) NOT NULL,
    datanascimento CHAR(10) NOT NULL,
    codigoanimal INT(10) primary key NOT NULL AUTO_INCREMENT
);

CREATE TABLE veterinario(
    crmv VARCHAR(10) primary key NOT NULL,
    nomeveterinario VARCHAR(200) NOT NULL,
    dataadmissao DATE NOT NULL,
    salario INT(10) NOT NULL
);

CREATE TABLE consulta(
    consultadia DATE NOT NULL,
    consultahorario VARCHAR(5) NOT NULL,
    consultamotivo VARCHAR(100)
);

ALTER TABLE cliente CHANGE COLUMN nomecliente nomecompleto VARCHAR(200) NOT NULL;

ALTER TABLE cliente MODIFY COLUMN nomecompleto VARCHAR (500) NOT NULL;

ALTER TABLE animal DROP COLUMN nomeanimal;

ALTER TABLE animal ADD nomeanimalzinho VARCHAR(50) NOT NULL;

INSERT INTO cliente (cpf, nomecompleto, telefonecliente) VALUES ('1144444411 ', 'Ana Claudia Cunha', '11999998888');

DELETE FROM cliente WHERE cpf = '1144444411'

DROP TABLE consulta;

DROP TABLE veterinario;

DROP TABLE animal;

DROP TABLE cliente;

DROP DATABASE sistemapetshop;
