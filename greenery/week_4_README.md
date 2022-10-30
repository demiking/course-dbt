### Orders that changed from week 2 to week 4
a4b32f8a2d812df0870308be23f4dd8d
3a2866d797d64d4d52215cae808aaac9
dcd4920f277ab4818e57e813a623fe04
14096e1544daa6c8218240f3470500be
9486da17f6334f531d748a58022f434e
a4025764df3018c658d8168cbf9060f9

### Part 2

Created a session_funnel.sql model that creates the table for the funnel with a grain of each session.
This can be filtered by date to see the drop off with time.
Also, if customer segmentation is done, this can be joined by user_id to allow us see the drop off amongst different types of users.

```
select sum(page_viewed_in_session)/count(*) from DEV_DB.DBT_DEMILADEAGBOOLA.session_funnels
```
gives a result of 1

```
select sum(add_to_cart_in_session)/count(*) from DEV_DB.DBT_DEMILADEAGBOOLA.session_funnels
```
gives a result of 0.807958

```
select sum(checkout_in_session)/count(*) from DEV_DB.DBT_DEMILADEAGBOOLA.session_funnels
```
gives a result of 0.624567

This means we have a 19.2% fall off from viewing a page to adding an item to cart within a session and an 18.3% drop from adding an item to cart within a session to checking out within a session.
Viewing a page to adding an item to cart is the larger drop off point.


### Part 3A
My organization helps with setting up data infrastructure and learning about exposure is a very good addition to DAGs
Seeing how Drizly uses artifacts is also a great plus cause I can definitely take a leaf from it.

### Part 3B

On a simple project, dbt cloud would be my go-to since it will deploy and automate it.

If this project evolves to have more moving parts like data to/from an S3 bucket, it would be helpful to use dagster.

Also, metadata like run_results.json and manifest.json would be ext