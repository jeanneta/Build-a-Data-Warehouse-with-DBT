{{ config(materialized='table', schema='raw') }}

SELECT
    CAST (staff_id as INT) AS staff_id,
    first_name,
    last_name,
    CAST (address_id as INT) AS address_id,
    email,
    CAST (store_id as INT) AS store_id,
    active,
    username,
    password,
    last_update,
    picture
FROM {{ source('public', 'staff') }}
