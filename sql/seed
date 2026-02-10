-- Customers
insert into customers (name, email, country)
select
    'Customer ' || i,
    'customer' || i || '@email.com',
    (array['Brazil', 'USA', 'Germany', 'France', 'Canada'])[1 + (random() * 4)::int]
from generate_series(1, 100) i;

-- Products
insert into products (name, category, price)
select
    'Product ' || i,
    (array['Electronics', 'Clothing', 'Home', 'Books'])[1 + (random() * 3)::int],
    round((random() * 500 + 10)::numeric, 2)
from generate_series(1, 50) i;

-- Orders
insert into orders (customer_id, order_date, status)
select
    c.customer_id,
    current_date - (random() * 365)::int,
    (array['completed', 'canceled', 'returned'])[1 + (random() * 2)::int]
from customers c
cross join generate_series(1, 5);

-- Order Items
insert into order_items (order_id, product_id, quantity, unit_price)
select
    o.order_id,
    p.product_id,
    (random() * 3 + 1)::int,
    p.price
from orders o
join products p on random() < 0.3;
