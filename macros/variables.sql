{% macro learn_variables() %}

    # Jinja Variablen
    # ---------------
    {% set your_name_jinja = "Zoltan" %}
    {{ log("Hello " ~ your_name_jinja, info=True) }}

    # dbt Variablen
    # -------------
    # run-1 Übergabe mit als Paramter 
    #   dbt run-operation learn_variables --vars {user_name: DBT-Geri}
    # run-2 ( Default Value)
    #   dbt run-operation learn_variables
    # run-3 ( Definiert im dbt_project.yml )
    #   dbt run-operation learn_variables

    {{ log("Hello dbt user " ~ var("user_name","defaultUser") ~ "!", info=True) }}

    {% if var("in_test", False) %}
       {{ log("In test", info=True) }}
    {% else %}
       {{ log("NOT in test", info=True) }}
    {% endif %}

{% endmacro %}