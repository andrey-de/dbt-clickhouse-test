SELECT
    number + 1 AS product_id,
    'P' || toString(number + 1) AS product_code,
    'Product ' || toString(number + 1) AS product_name,
    arrayElement(['Red', 'Green', 'Blue', 'Yellow', 'Black', 'White'], (number % 6) + 1) AS product_color
FROM numbers(1000) AS number_table