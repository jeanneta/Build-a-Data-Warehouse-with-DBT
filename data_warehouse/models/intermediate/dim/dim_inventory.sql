{{ config(materialized='table', schema='intermediate') }}

SELECT
    inventory_id,
    film_id,
    store_id,
    last_update
FROM {{ ref('raw_inventory') }}
