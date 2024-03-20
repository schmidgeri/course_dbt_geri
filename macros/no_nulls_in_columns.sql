-- no_nulls_in_columns(table)
-- ==========================
-- Das folgende Macro erzeugt das folgende SQL:
-- 
-- Select * from table where col1 is null or col2 ist null or false


{% macro no_nulls_in_columns(table) %}
    SELECT * FROM {{ table }} WHERE
    {% for col in adapter.get_columns_in_relation(table) -%}
        {{ col.column }} IS NULL OR
    {% endfor %}
    FALSE
{% endmacro %}


