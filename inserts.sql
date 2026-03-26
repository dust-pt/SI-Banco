-- 2. Inserir 10 Agências (Cidades Portuguesas)
INSERT INTO AGENCIA (id_agencia, nome, cidade, telefone) VALUES
(1, 'Agência Baixa', 'Lisboa', '213 456 789'),
(11, 'Agência Chiado', 'Lisboa', '213 555 111'),
(12, 'Agência Parque Nações', 'Lisboa', '218 999 222'),
(13, 'Agência Benfica', 'Lisboa', '217 654 321'),
(2, 'Agência Boavista', 'Porto', '222 333 444'),
(21, 'Agência Foz', 'Porto', '226 111 222'),
(22, 'Agência Antas', 'Porto', '225 333 444'),
(23, 'Agência Ribeira', 'Porto', '222 000 999'),
(3, 'Agência Universidade', 'Coimbra', '239 123 123'),
(4, 'Agência Marina', 'Faro', '289 999 888'),
(5, 'Agência Sé', 'Braga', '253 100 200'),
(6, 'Agência Funchal', 'Funchal', '291 500 600'),
(7, 'Agência Rossio', 'Aveiro', '234 777 666'),
(8, 'Agência Digital PT', 'Internet', '800 123 456'),
(9, 'Agência Bonfim', 'Setúbal', '265 888 777'),
(10, 'Agência Planalto', 'Viseu', '232 444 555');



--- 3. Inserir 5 Clientes (Nomes e NIFs portugueses)
INSERT INTO CLIENTE (id_cliente, nome, nif, data_nasc) VALUES
(1, 'João Silva', '200100200', '1985-05-20'),
(2, 'Ana Pereira', '210300400', '1990-08-15'),
(3, 'Rui Santos', '220500600', '1978-01-10'),
(4, 'Maria Oliveira', '230700800', '2000-12-05'),
(5, 'Tiago Costa', '240900100', '1995-03-30');

-- 4. Inserir 20 Contas (Saldos em Euros)
INSERT INTO CONTA (num_conta, saldo, id_agencia, id_cliente) VALUES
-- João Silva
(1001, 1500.50, 1, 1),
(1002, 5000.00, 2, 1),
(1003, 200.00, 3, 1),
(1004, 10000.00, 8, 1),
-- Ana Pereira
(1005, 350.75, 1, 2),
(1006, 12000.00, 4, 2),
(1007, 450.00, 5, 2),
(1008, 0.00, 8, 2),
-- Rui Santos
(1009, 50.00, 6, 3),
(1010, 9800.50, 7, 3),
(1011, 150000.00, 10, 3),
(1012, 340.20, 2, 3),
-- Maria Oliveira
(1013, 1200.00, 9, 4),
(1014, 500.00, 9, 4),
(1015, 7500.00, 8, 4),
(1016, 25.00, 3, 4),
-- Tiago Costa
(1017, 3000.00, 1, 5),
(1018, 4200.50, 2, 5),
(1019, 100.00, 5, 5),
(1020, 950.00, 6, 5);

-- 5. Inserir 10 Empréstimos (Crédito Habitação/Pessoal)
INSERT INTO EMPRESTIMO (id_emp, valor, id_cliente, id_agencia) VALUES
(501, 5000.00, 1, 1),  
(502, 20000.00, 1, 2), 
(503, 15000.00, 2, 4), 
(504, 3000.00, 2, 8),  
(505, 100000.00, 3, 10), 
(506, 50000.00, 3, 1),   
(507, 2000.00, 4, 9),  
(508, 1500.00, 4, 9),  
(509, 8000.00, 5, 5),  
(510, 12000.00, 5, 6);



