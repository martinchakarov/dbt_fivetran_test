with source_data as (
    select * from {{ source('airbnb', 'listings_and_reviews') }}
),

final as (
    select * from source_data
)

select * from final