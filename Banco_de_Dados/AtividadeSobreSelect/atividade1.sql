CREATE TABLE clientes(
  id_cliente serial,
  nome VARCHAR(24) not NULL,
  email VARCHAR(40) NOT NULL,
  PRIMARY KEY(id_cliente)
  )
CREATE TABLE pedidos(
  id_pedidos INT serial,
  id_cliente_pk INT not NULL,
  valor DECIMAL(5,2) not NULL,
  PRIMARY KEY(id_pedidos),
  FOREIGN key(id_cliente_pk) REFERENCES clientes(id_cliente)
  )
INSERT InTO clientes(nome, email)
Values('joao', 'joao@gmail.com'),
('lucas', 'lucas@gmail.com'),
('edu', 'edu@gmail.com'),
('lahs', 'lahs@gmail.com')
INSERT InTO pedidos(id_cliente_pk, valor)
Values(1, 13.2),
Values(1, 59.79),
Values(2, 25.5),
Values(2, 169.89),
Values(2, 2.5),
Values(3, 809.59),
Values(4, 0.25)

SELECT clientes.nome, SUM(pedidos.valor) AS total_valor FROM clientes INNER JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente_pk GROUP BY total_valor ORDER BY total_valor DESC;
