{% macro camel_to_snake(string) -%}

    {%- set uppers = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' | list -%}
    {%- set output = [] %}
    {%- for char in (string | list) -%}
        {%- if char in uppers -%}
            {% do output.append("_") %}
            {% do output.append(char.lower()) %}
        {%- else -%}
            {% do output.append(char) %}
        {%- endif %}
    {%- endfor -%}

    {{ return("".join(output)) }}
{%- endmacro %}