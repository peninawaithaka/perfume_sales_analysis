{{
    config(
        materialized = "view"
    )
}}

WITH raw_mens_perfume AS(
    SELECT 
        brand,
        title as perfume_title,
        type as perfume_type,
        price,
        available as count_available,
        sold as perfumes_sold,
        lastupdated as last_updated,
        itemlocation  
    FROM PERFUME_SALES.STAGING.MENS_PERFUME
)

SELECT * FROM raw_mens_perfume