{{ config(materialized='table', schema='intermediate') }}

SELECT
    payment_id,
    customer_id,
    staff_id,
    rental_id, 
    amount, 
    payment_date
FROM {{ ref('raw_payment') }}