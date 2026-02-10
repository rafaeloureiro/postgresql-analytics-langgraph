-- Customers
create table customers (
    customer_id uuid primary key default gen_random_uuid(),
    name text not null,
    email text unique not null,
    country text,
    created_at timestamp default now()
);

-- Products
create table products (
    product_id uuid primary key default gen_random_uuid(),
    name text not null,
    category text not null,
    price numeric(10,2) not null
);

-- Orders
create table orders (
    order_id uuid primary key default gen_random_uuid(),
    customer_id uuid references customers(customer_id),
    order_date date not null,
    status text not null
);

-- Order Items
create table order_items (
    order_item_id uuid primary key default gen_random_uuid(),
    order_id uuid references orders(order_id),
    product_id uuid references products(product_id),
    quantity integer not null,
    unit_price numeric(10,2) not null
);
