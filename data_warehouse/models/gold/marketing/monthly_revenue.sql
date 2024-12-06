{{ config(materialized='table', schema='mart') }}

SELECT
    DATE_TRUNC('month', payment_date) AS month,
    SUM(amount) AS total_revenue
FROM {{ ref('fact_payment') }} fp
LEFT JOIN {{ ref('dim_rental') }} dr on fp.rental_id = dr.rental_id
GROUP BY payment_date