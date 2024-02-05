{% macro rolling_average_periods(column_name, partition_by,periods=7, order_by='created_at') %}
    avg( {{ column_name }} ) OVER (
                PARTITION BY {{ partition_by }}
                ORDER BY {{ order_by }}
                ROWS BETWEEN {{ periods - 1}} PRECEDING AND CURRENT ROW
            ) AS avg_{{ periods }}_periods_{{ column_name }}
{% endmacro %}
