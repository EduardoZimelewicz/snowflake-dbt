select * from {{ source('fandango', 'fandango_score_comparison') }};

select * from {{ source('fandango', 'fandango_scrape') }};