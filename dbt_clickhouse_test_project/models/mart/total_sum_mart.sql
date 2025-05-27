SELECT toDate(o.order_ts) AS date, c.country, p.product_color, SUM(o.amount) AS total_sum
FROM {{ref('Orders')}} o 
LEFT JOIN {{ref('Customers')}} c ON o.customer_id = c.customer_id
LEFT JOIN {{ref('Products')}} p ON o.product_id = p.product_id
GROUP BY toDate(o.order_ts), c.country, p.product_color