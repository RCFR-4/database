-- Show all records from the main tables
SELECT *
FROM customers;

SELECT *
FROM products;

SELECT *
FROM orders;

SELECT *
FROM order_items;

SELECT *
FROM payments;

-- Show orders with their customers
SELECT
    orders.order_id,
    customers.full_name,
    orders.order_date,
    orders.order_status
FROM orders, customers
WHERE orders.customer_id = customers.customer_id;

-- Show products included in each order
SELECT
    orders.order_id,
    products.name AS product_name,
    order_items.quantity,
    order_items.unit_price
FROM orders, products, order_items
WHERE orders.order_id = order_items.order_id
AND products.product_id = order_items.product_id;

-- Show payments with their orders
SELECT
    payments.payment_id,
    payments.order_id,
    payments.payment_method,
    payments.paid_amount,
    payments.payment_date
FROM payments, orders
WHERE payments.order_id = orders.order_id;

-- Show orders with customers and payment information
SELECT
    orders.order_id,
    customers.full_name,
    orders.order_status,
    payments.payment_method,
    payments.paid_amount
FROM orders, customers, payments
WHERE orders.customer_id = customers.customer_id
AND orders.order_id = payments.order_id;

-- Show products with stock quantity greater than 15
SELECT
    name,
    stock_quantity
FROM products
WHERE stock_quantity > 15;

-- Show paid orders
SELECT
    order_id,
    order_date,
    order_status
FROM orders
WHERE order_status = 'Paid';

-- Count items by order
SELECT
    orders.order_id,
    COUNT(order_items.order_item_id) AS total_items
FROM orders, order_items
WHERE orders.order_id = order_items.order_id
GROUP BY orders.order_id;

-- Calculate total value by order
SELECT
    orders.order_id,
    SUM(order_items.quantity * order_items.unit_price) AS total_order_value
FROM orders, order_items
WHERE orders.order_id = order_items.order_id
GROUP BY orders.order_id;
