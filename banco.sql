-- Active: 1772896428595@@mysql-22e4af11-banco-2595.d.aivencloud.com@12493@defaultdb
CREATE DATABASE BANCO;

USE BANCO;

-- 1. Criação da Tabela AGENCIA
CREATE TABLE AGENCIA (
    id_agencia INT PRIMARY KEY,
    nome VARCHAR(50),
    cidade VARCHAR(50),
    telefone VARCHAR(20)
);

-- 2. Criação da Tabela CLIENTE
CREATE TABLE CLIENTE (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    NIF CHAR(9) UNIQUE,
    data_nasc DATE
);

-- 3. Criação da Tabela CONTA
-- Possui chaves estrangeiras para Cliente e Agencia
-- Se apagar o Cliente -> A Conta é apagada (CASCADE)
-- Se apagar a Agência -> O banco BLOQUEIA (Sem Cascade, para segurança)
CREATE TABLE CONTA (
    num_conta INT PRIMARY KEY,
    saldo DECIMAL(15, 2),
    id_agencia INT,
    id_cliente INT,
    CONSTRAINT fk_conta_agencia 
        FOREIGN KEY (id_agencia) REFERENCES AGENCIA(id_agencia),
    CONSTRAINT fk_conta_cliente 
        FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)   ON DELETE CASCADE 
);

-- 4. Tabela EMPRESTIMO 
-- Se apagar o Cliente -> O Empréstimo é apagado (CASCADE)
CREATE TABLE EMPRESTIMO (
    id_emp INT PRIMARY KEY,
    valor DECIMAL(15, 2),
    id_cliente INT,
    id_agencia INT,
    CONSTRAINT fk_emp_cliente 
        FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)  ON DELETE CASCADE,
    CONSTRAINT fk_emp_agencia 
        FOREIGN KEY (id_agencia) REFERENCES AGENCIA(id_agencia)
);
``` A Explicação Técnica (Parte por Parte)
CONSTRAINT fk_conta_agencia:

--O que é: É o nome que demos a esta regra.

Para que serve: Se der um erro (ex: tentou apagar uma agência que tem contas), o banco vai gritar: "Erro na regra fk_conta_agencia". Se não dermos nome, o banco inventa um nome estranho tipo FK__CONTA__5A23, o que dificulta saber onde está o problema.

Nota: "fk" é uma abreviação comum para Foreign Key.

FOREIGN KEY (id_agencia):

O que é: Define quem é o mensageiro nesta tabela (tabela CONTA).

Significado: "Nesta tabela de Contas, a coluna id_agencia é a Chave Estrangeira."

REFERENCES AGENCIA (id_agencia):

O que é: Define a origem da verdade.

Significado: "Esta chave aponta para a tabela AGENCIA e deve ser igualzinha ao id_agencia de lá.```

