{{ config(materialized='table', schema='raw') }}

SELECT
    CAST (address_id as INT) AS address_id,
    address,
    address2,
    district,
    CAST (city_id as INT) AS city_id,
    postal_code,
    phone,
    last_update
FROM {{ source('public', 'address') }}
