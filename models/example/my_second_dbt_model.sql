
-- Use the `ref` function to select from other models
{{ config(materialized='table') }}
{{ config(schema='marketing') }}

select *
from {{ ref('my_first_dbt_model') }}
where id = 1
