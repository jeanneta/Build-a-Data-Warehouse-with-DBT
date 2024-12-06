{{ config(materialized='table', schema='raw') }}

SELECT
    CAST (payment_id as INT) AS payment_id,
    CAST (customer_id as INT) AS customer_id,
    CAST (staff_id as INT) AS staff_id,
    CAST (rental_id AS INT) AS rental_id, 
    amount, 
    payment_date
FROM {{ source('public', 'payment') }}