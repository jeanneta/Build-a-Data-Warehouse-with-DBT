{{ config(materialized='table', schema='intermediate') }}

SELECT
    customer_id,
    store_id, 
    first_name,
    last_name,
    email,
    address_id,
    activebool,
    create_date,
    last_update,
    active
FROM {{ ref('raw_customer') }}