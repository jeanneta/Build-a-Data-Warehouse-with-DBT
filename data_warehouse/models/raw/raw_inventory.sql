{{ config(materialized='table', schema='raw') }}

SELECT
    CAST (inventory_id as INT) AS inventory_id,
    CAST (film_id as INT) AS film_id,
    CAST (store_id as INT) AS store_id,
    last_update
FROM {{ source('public', 'inventory') }}

