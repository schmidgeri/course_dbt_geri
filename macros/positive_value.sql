{% macro positive_value(table, column_name) %}
SELECT
    *
FROM
    {{ table }}
WHERE
    {{ column_name}} < 1
{% endmacro %}
