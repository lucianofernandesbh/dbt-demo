{{ config(materialized='table', database='MYDB01', schema='PUBLIC') }}



SELECT country, COUNT(country) AS count
FROM mydb01.public.users
GROUP BY country
--a