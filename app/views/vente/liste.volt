{% extends "layout/main.volt" %}

{% block content %}
<table border="1" cellpadding="8" cellspacing="0">
    <thead>
        <tr>
            <th>ID Vente</th>
            <th>ID Client</th>
            <th>ID Utilisateur</th>
            <th>Date Vente</th>
            <th>ID Produit</th>
        </tr>
    </thead>
    <tbody>
        {% for vente in ventes %}
        <tr>
            <td>{{ vente.id_vente }}</td>
            <td>{{ vente.id_client }}</td>
            <td>{{ vente.id_utilisateur }}</td>
            <td>{{ vente.date_vente }}</td>
            <td>{{ vente.id_produit }}</td>
        </tr>
        {% else %}
        <tr>
            <td colspan="5">Aucune vente trouvée.</td>
        </tr>
        {% endfor %}
    </tbody>
</table>
{% endblock %}</table>