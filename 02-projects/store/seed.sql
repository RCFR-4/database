INSERT INTO customers (full_name, phone_number, email)
VALUES
    ('Lucas Almeida', '5511999991111', 'lucas.almeida@gmail.com'),
    ('Mariana Costa', '5511999992222', 'mariana.costa@gmail.com'),
    ('Pedro Santos', '5511999993333', 'pedro.santos@gmail.com');

INSERT INTO products (name, description, price, stock_quantity)
VALUES
    ('Notebook', 'Portable computer for study and work.', 3500.00, 10),
    ('Keyboard', 'Mechanical keyboard for daily use.', 250.00, 25),
    ('Mouse', 'Wireless mouse.', 120.00, 30),
    ('Backpack', 'Backpack for notebooks and books.', 180.00, 15),
    ('Study Book', 'Book used for academic studies.', 90.00, 20);

INSERT INTO orders (customer_id, order_date, order_status)
VALUES
    (1, '2025-03-01', 'Paid'),
    (2, '2025-03-02', 'Pending'),
    (3, '2025-03-03', 'Paid');

INSERT INTO order_items (order_id, product_id, quantity, unit_price)
VALUES
    (1, 1, 1, 3500.00),
    (1, 3, 1, 120.00),
    (2, 5, 2, 90.00),
    (3, 2, 1, 250.00),
    (3, 4, 1, 180.00);

INSERT INTO payments (order_id, payment_method, paid_amount, payment_date)
VALUES
    (1, 'Credit Card', 3620.00, '2025-03-01'),
    (3, 'Pix', 430.00, '2025-03-03');
