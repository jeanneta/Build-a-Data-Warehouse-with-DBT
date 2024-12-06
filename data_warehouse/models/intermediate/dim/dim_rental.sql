{{ config(materialized='table', schema='intermediate') }}

SELECT
    rental_id,
    rental_date, 
    inventory_id, 
    customer_id,
    return_date,
    staff_id,
    last_update
FROM {{ ref('raw_rental') }}