{% macro strip_film_year(column_name) -%}

    regexp_replace(substr({{ column_name }}, len({{ column_name }}) - 6, len({{ column_name }})), '\\(|\\)', '')

{%- endmacro %}