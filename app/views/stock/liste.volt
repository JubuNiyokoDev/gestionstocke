{% extends "layout/main.volt" %}

{% block content %}
<table class="table table-bordered">
    <thead>
        <tr>
            <th>ID Stock</th>
            <th>ID Produit</th>
            <th>Quantité Stock</th>
            <th>Date Mise à Jour</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        {% for stock in stocks %}
        <tr>
            <td>{{ stock.id_stock }}</td>
            <td>{{ stock.id_produit }}</td>
            <td>{{ stock.quantite_stock }}</td>
            <td>{{ stock.date_Misejour }}</td>
            <td>
                <a href="{{ url('stock/edit/' ~ stock.id_stock) }}" class="btn btn-primary btn-sm">Modifier</a>
            </td>
        </tr>
        {% else %}
        <tr>
            <td colspan="5">Aucun stock trouvé.</td>
        </tr>
        {% endfor %}
    </tbody>
</table>
{% endblock %}</table>