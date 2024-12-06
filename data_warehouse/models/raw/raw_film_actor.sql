{{ config(materialized='table', schema='raw') }}

SELECT
    CAST (actor_id as INT) AS actor_id,
    CAST (film_id as INT) AS film_id,
    last_update
FROM {{ source('public', 'film_actor') }}

