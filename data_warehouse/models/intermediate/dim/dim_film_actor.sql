{{ config(materialized='table', schema='intermediate') }}

SELECT
    actor_id,
    film_id,
    last_update
FROM {{ ref('raw_film_actor') }}
