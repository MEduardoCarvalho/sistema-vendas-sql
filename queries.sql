SELECT 
    p.id AS pedido,
    SUM(pr.preco * i.quantidade) AS total
FROM pedidos p
JOIN itens_pedido i ON p.id = i.pedido_id
JOIN produtos pr ON i.produto_id = pr.id
GROUP BY p.id;

SELECT TOP 1
    c.nome,
    SUM(pr.preco * i.quantidade) AS total_gasto
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
JOIN itens_pedido i ON p.id = i.pedido_id
JOIN produtos pr ON i.produto_id = pr.id
GROUP BY c.nome
ORDER BY total_gasto DESC;

SELECT TOP 1
    pr.nome,
    SUM(i.quantidade) AS total_vendido
FROM produtos pr
JOIN itens_pedido i ON pr.id = i.produto_id
GROUP BY pr.nome
ORDER BY total_vendido DESC;
