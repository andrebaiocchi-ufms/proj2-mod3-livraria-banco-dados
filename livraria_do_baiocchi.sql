CREATE TABLE livros (
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    autor TEXT,
    preco REAL,
    estoque INTEGER
);

INSERT INTO livros (id, titulo, autor, preco, estoque) VALUES
(1, 'O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 59.90, 4),
(2, 'X-Men: A Fênix Negra', 'Chris Claremont & John Byrne', 34.90, 6),
(3, 'Sandman: Prelúdios e Noturnos', 'Neil Gaiman', 45.00, 3);

CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY,
    livro_id INTEGER,
    quantidade INTEGER,
    data_pedido TEXT,
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

INSERT INTO pedidos (id, livro_id, quantidade, data_pedido) VALUES
(1, 2, 2, '2025-05-10'),
(2, 1, 1, '2025-05-11'),
(3, 3, 1, '2025-05-12');