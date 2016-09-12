{% extends "admin/admin.fluid.html.tpl" %}
{% block title %}Parts{% endblock %}
{% block name %}Parts{% endblock %}
{% block style %}no-padding{% endblock %}
{% block content %}
    <table class="filter" data-no_input="1">
        <thead>
            <tr class="table-row table-header">
                <th class="text-left">Part</th>
                <th class="text-left">Module</th>
            </tr>
        </thead>
        <tbody class="filter-contents">
            {% for part in parts %}
                <tr class="table-row">
                    <td class="text-left">
                        <strong>{{ part.name() }}</strong>
                    </td>
                    {% if part.__module__ %}
                        <td class="text-left">{{ part.__module__ }}.{{ part.__class__.__name__ }}</td>
                    {% else%}
                        <td class="text-left">{{ part.__class__.__name__ }}</td>
                    {% endif %}
                </tr>
            {% endfor %}
        </tbody>
    </table>
{% endblock %}
