{% macro filter_by_status(wanted_status) %}
{% if wanted_status != '' %}
    where status ~* '{{wanted_status}}'
{% endif %}
{% endmacro %}