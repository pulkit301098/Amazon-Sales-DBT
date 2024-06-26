{% macro filter_by_month(month_num) %}
{% if month_num is not none %}
    {% if month_num > 12 or month_num < 0 %}
        {{ exceptions.raise_compiler_error('Please choose a valid month') }}
    {% else %}
        where date_part('month', order_date) = {{month_num}}
    {% endif %}
{% endif %}

{% endmacro%}