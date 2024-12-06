{{ config(materialized='table', schema='intermediate') }}

SELECT
    address_id,
    address,
    address2,
    district,
    city_id,
    postal_code,
    phone,
    last_update
FROM {{ ref('raw_address') }}

