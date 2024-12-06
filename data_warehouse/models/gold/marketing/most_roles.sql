{{ config(materialized='table', schema='mart') }}

SELECT
    CONCAT(da.first_name, ' ', da.last_name) AS actor_name,
    COUNT(dfa.film_id) AS total_films
FROM {{ ref('dim_film_actor') }} dfa
LEFT JOIN {{ ref('dim_actor') }} da ON dfa.actor_id = da.actor_id
GROUP BY actor_name
ORDER BY total_films DESC

