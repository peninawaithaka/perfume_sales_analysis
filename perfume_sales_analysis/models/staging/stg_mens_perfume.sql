{{
    config(
        materialized = "view"
    )
}}

WITH raw_mens_perfume AS(
    SELECT 
        item_id
        brand,
        price,
        available as count_available,
        sold as perfumes_sold,
        lastupdated as last_updated,
        itemlocation  
    FROM PERFUME_SALES.ANALYTICS.RAW_MENS_PERFUME
)

SELECT * FROM raw_mens_perfume