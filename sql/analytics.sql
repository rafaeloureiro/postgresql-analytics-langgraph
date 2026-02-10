-- Total revenue
select
    round(sum(oi.quantity * oi.unit_price), 2) as total_revenue
from order_items oi
join orders o on o.order_id = oi.order_id
where o.status = 'completed';

-- Revenue by month
select
    date_trunc('month', o.order_date) as month,
    round(sum(oi.quantity * oi.unit_price), 2) as revenue
from orders o
join order_items oi on o.order_id = oi.order_id
where o.status = 'completed'
group by 1
order by 1;

-- Top products by revenue
select
    p.name,
    round(sum(oi.quantity * oi.unit_price), 2) as revenue
from order_items oi
join products p on p.product_id = oi.product_id
join orders o on o.order_id = oi.order_id
where o.status = 'completed'
group by p.name
order by revenue desc
limit 10;

-- Average order value
select
    round(avg(order_total), 2) as avg_ticket
from (
    select
        o.order_id,
        sum(oi.quantity * oi.unit_price) as order_total
    from orders o
    join order_items oi on o.order_id = oi.order_id
    where o.status = 'completed'
    group by o.order_id
) t;

-- Revenue by country
select
    c.country,
    round(sum(oi.quantity * oi.unit_price), 2) as revenue
from customers c
join orders o on o.customer_id = c.customer_id
join order_items oi on oi.order_id = o.order_id
where o.status = 'completed'
group by c.country
order by revenue desc;
