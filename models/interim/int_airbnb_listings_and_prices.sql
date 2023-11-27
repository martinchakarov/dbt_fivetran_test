with stg_airbnb as (
    select * from {{ ref('stg_airbnb_listings_and_prices') }}
),

final as (
    select
        {{ dbt_utils.generate_surrogate_key(['_ID', 'LAST_SCRAPED']) }} as pk,
        *
    from stg_airbnb
)

select * from final