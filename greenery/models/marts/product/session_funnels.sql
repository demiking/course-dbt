with funnel as (
    select * from {{ref('int_session_events_agg')}}
    )

select
    session_id,
    user_id,
    cast(session_start as date) as date,
    case when page_view > 0 then 1 else 0 end as page_viewed_in_session,
    case when add_to_cart > 0 then 1 else 0 end as add_to_cart_in_session,
    case when checkout > 0 then 1 else 0 end as checkout_in_session

    from funnel
    