SELECT
    number_table.number + 1 AS order_id,
    -- Random timestamp within last year from today
    toDateTime(toUnixTimestamp(now()) - rand() % 31536000) AS order_ts,
    -- Random customer_id between 1 and 1000
    1 + rand() % 1000 AS customer_id,
    -- Random product_id between 1 and 1000
    1 + rand() % 1000 AS product_id,
    -- Random quantity 1 to 100
    1 + rand() % 100 AS quantity,
    -- Random amount between 0.99 and 100.99
    0.99 + (rand() % 10000) / 100.0 AS amount
FROM numbers(1000000) AS number_table