UPDATE AIRBNB.RAW.RAW_LISTINGS SET MINIMUM_NIGHTS=30, updated_at=CURRENT_TIMESTAMP() WHERE ID=3176;

UPDATE{{ source('airbnb', 'listings') }} SET MINIMUM_NIGHTS=30, updated_at=CURRENT_TIMESTAMP() WHERE ID=3176;

SELECT * FROM {{ source('airbnb', 'listings') }}


SELECT * FROM {{ source('airbnb', 'listings') }}

select * from {{ ref('dim_listings_cleansed') }}

