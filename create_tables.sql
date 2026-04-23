CREATE DATABASE SistemaVendas;
GO

USE SistemaVendas;

-- CLIENTES
CREATE TABLE clientes (
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

-- PRODUTOS
CREATE TABLE produtos (
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

-- PEDIDOS
CREATE TABLE pedidos (
    id INT PRIMARY KEY IDENTITY,
    cliente_id INT,
    data_pedido DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- ITENS DO PEDIDO
CREATE TABLE itens_pedido (
    id INT PRIMARY KEY IDENTITY,
    pedido_id INT,
    produto_id INT,
    quantidade INT,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);
