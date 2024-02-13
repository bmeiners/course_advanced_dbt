{%- test assert_valid_event_name(model, column_name) %}

select * from {{ model }}
where lower({{ column_name }}) like '%test%'

{%- endtest %}