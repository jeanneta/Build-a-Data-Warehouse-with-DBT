{{ config(materialized='table', schema='mart') }}

SELECT 
    df.title as film_title, 
    count(fp.payment_id) as total_sales
FROM {{ ref('fact_payment') }} fp
LEFT JOIN {{ ref('dim_rental') }} dr on fp.rental_id = dr.rental_id 
LEFT JOIN {{ ref('dim_inventory') }} di on dr.inventory_id = di.inventory_id 
LEFT JOIN {{ ref('dim_film') }} df on df.film_id = di.film_id 
GROUP BY df.title
ORDER BY total_sales desc
