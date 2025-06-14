{% extends "layout/main.volt" %}

{% block content %}
<table border="1" cellpadding="8" cellspacing="0">
    <thead>
        <tr>
            <th>ID Vente</th>
            <th>ID Produit</th>
            <th>Quantité Vendue</th>
            <th>Prix Unitaire Vendue</th>
        </tr>
    </thead>
    <tbody>
        {% for item in concerner %}
        <tr>
            <td>{{ item.id_vente }}</td>
            <td>{{ item.id_produit }}</td>
            <td>{{ item.quantite_vendue }}</td>
            <td>{{ item.prix_unitaire_vendue }}</td>
        </tr>
        {% else %}
        <tr>
            <td colspan="4">Aucune donnée trouvée.</td>
        </tr>
        {% endfor %}
    </tbody>
</table>
{% endblock %}