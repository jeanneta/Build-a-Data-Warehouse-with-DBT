{{ config(materialized='table', schema='intermediate') }}

SELECT
    actor_id,
    first_name,
    last_name,
    last_update
FROM {{ ref('raw_actor') }}
