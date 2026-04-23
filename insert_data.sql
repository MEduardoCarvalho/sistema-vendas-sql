INSERT INTO clientes (nome, email) VALUES
('João Silva', 'joao@email.com'),
('Maria Souza', 'maria@email.com');

INSERT INTO produtos (nome, preco) VALUES
('Notebook', 3500.00),
('Mouse', 80.00),
('Teclado', 150.00);

INSERT INTO pedidos (cliente_id) VALUES
(1),
(2);

INSERT INTO itens_pedido (pedido_id, produto_id, quantidade) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1);
