{% macro h1(
    contents,
    margin_top = "38px",
    margin_bottom = "26px",
    size = "22px",
    weight = "normal",
    color = "#2d2d2d"
) -%}
    <h1 style="margin-top:{{ margin_top }};margin-bottom:{{ margin_bottom }};font-size:{{ size }};font-weight:{{ weight }};color:{{ color }};">{{ contents }}</h1>
{%- endmacro %}

{% macro h2(
    contents,
    margin_top = "30px",
    margin_bottom = "14px",
    size = "20px",
    weight = "normal",
    color = "#2d2d2d"
) -%}
    <h2 style="margin-top:{{ margin_top }};margin-bottom:{{ margin_bottom }};font-size:{{ size }};font-weight:{{ weight }};color:{{ color }};">{{ contents }}</h2>
{%- endmacro %}

{% macro h3(
    contents,
    margin_top = "26px",
    margin_bottom = "12px",
    size = "18px",
    weight = "normal",
    color = "#2d2d2d"
) -%}
    <h3 style="margin-top:{{ margin_top }};margin-bottom:{{ margin_bottom }};font-size:{{ size }};font-weight:{{ weight }};color:{{ color }};">{{ contents }}</h3>
{%- endmacro %}

{% macro button(
    href,
    contents,
    base = True,
    display = "inline-block",
    padding = "7px 14px 7px 14px",
    border_radius = "4px 4px 4px 4px",
    color = "#ffffff",
    background_color = "#2d2d2d",
    text_decoration = "none"
) -%}
    {% if base %}{% set href = base_url|default('', True) + href %}{% endif %}
    <a href="{{ href }}" style="display:{{ display }};padding:{{ padding }};border-radius:{{ border_radius }};color:{{ color }};background-color:{{ background_color }};text-decoration:{{ text_decoration }};">{{ contents }}</a>
{%- endmacro %}

{% macro link(href, contents, base = True, simple = False, color = "#4769cc") -%}{% if base %}{% set href = base_url|default('', True) + href %}{% endif %}{% if simple %}<a href="{{ href }}">{{ contents }}</a>{% else %}<a href="{{ href }}" style="color:{{ color }};text-decoration:none;padding-bottom:1px;">{{ contents }}</a>{% endif %}{%- endmacro %}

{% block html %}{% endblock %}
