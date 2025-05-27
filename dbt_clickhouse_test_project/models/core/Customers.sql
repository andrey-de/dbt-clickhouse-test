SELECT
    number_table.number + 1 AS customer_id,
    'Customer ' || toString(number_table.number + 1) AS customer_name,
    arrayElement(['USA', 'Canada', 'UK', 'Germany', 'France', 'Australia'], (number_table.number % 6) + 1) AS country
FROM numbers(1000) AS number_table