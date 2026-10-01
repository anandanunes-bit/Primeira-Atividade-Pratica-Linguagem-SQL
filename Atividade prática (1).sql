CREATE DATABASE IF NOT EXISTS loja_eletronicos;
USE loja_eletronicos;
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(10, 2),
    quantidade INT
    );


CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    cidade VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    salario DECIMAL(10, 2),
    setor VARCHAR(50)
);

INSERT INTO produtos (nome, categoria, preco, quantidade) VALUES
('Teclado Mecânico RGB', 'Periféricos', 250.00, 15),
('Mouse Gamer', 'Periféricos', 120.50, 30),
('Monitor 24 Polegadas', 'Monitores', 850.00, 8),
('Headset com Microfone', 'Periféricos', 180.90, 20),
('Notebook i5 8GB', 'Computadores', 3200.00, 5);

INSERT INTO clientes (nome, idade, cidade, email) VALUES
('João Silva', 22, 'Florianópolis', 'joao.silva@email.com'),
('Maria Oliveira', 17, 'São José', 'maria.o@email.com'),
('Carlos Pereira', 35, 'Palhoça', 'carlos.p@email.com'),
('Ana Santos', 28, 'Biguaçu', 'ana.santos@email.com'),
('Lucas Costa', 19, 'Florianópolis', 'lucas.costa@email.com');

INSERT INTO funcionarios (nome, cargo, salario, setor) VALUES
('Roberto Almeida', 'Vendedor', 2200.00, 'Vendas'),
('Fernanda Lima', 'Gerente', 4500.00, 'Administracao'),
('Paulo Souza', 'Tecnico', 2800.00, 'Suporte'),
('Juliana Rocha', 'Caixa', 1900.00, 'Financeiro');

SELECT * FROM produtos;
SELECT nome, preco FROM produtos;
SELECT * FROM clientes;
SELECT nome, cidade FROM clientes;
SELECT * FROM funcionarios;
SELECT nome, cargo, salario FROM funcionarios;
SELECT * FROM produtos WHERE preco > 100.00;
SELECT * FROM clientes WHERE idade >= 18;
SELECT * FROM funcionarios WHERE salario > 2000.00;
SELECT * FROM produtos WHERE quantidade > 5;


    