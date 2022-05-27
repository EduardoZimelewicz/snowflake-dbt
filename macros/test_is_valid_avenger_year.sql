{% test test_is_valid_avenger_year(model, column_name) -%}

with validation_year as (
    
    select 
        {{ column_name }} as avenger_year_joined 
    from {{ model }} 

),

validation_values as (

    select 
        avenger_year_joined
    from validation_year
    where avenger_year_joined < 1900

)

select * from validation_values

{%- endtest %}