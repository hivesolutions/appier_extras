{% extends "admin/admin.fluid.html.tpl" %}
{% block title %}Sessions{% endblock %}
{% block name %}Sessions{% endblock %}
{% block style %}no-padding{% endblock %}
{% block content %}
    <table class="filter" data-no_input="1">
        <thead>
            <tr class="table-row table-header">
                <th class="text-left">Session ID</th>
                <th class="text-left">Creation</th>
                <th class="text-left">Expiration</th>
                <th class="text-left">IP Addresss</th>
            </tr>
        </thead>
        <tbody class="filter-contents">
            {% for sid in sessions %}
                {% set session = sessions[sid] %}
                <tr class="table-row">
                    <td class="text-left">
                        <strong>{{ session.sid }}</strong>
                    </td>
                    <td class="text-left">{{ date_time(session.create, format = "%d %b %Y %H:%M:%S") }}</td>
                    <td class="text-left">{{ date_time(session.expire, format = "%d %b %Y %H:%M:%S") }}</td>
                    <td class="text-left">{{ session.address }}</td>
                </tr>
            {% endfor %}
        </tbody>
    </table>
{% endblock %}
