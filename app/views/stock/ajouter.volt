{% extends 'layout/main.volt' %}

{% block content %}
<form action="{{ url('stock/create') }}" method="post">
    <div>
        <label for="id_produit">ID Produit :</label>
        <input type="number" id="id_produit" name="id_produit" required>
    </div>
    <div>
        <label for="quantite_stock">Quantité en stock :</label>
        <input type="number" id="quantite_stock" name="quantite_stock" required>
    </div>
    <div>
        <button type="submit">Ajouter</button>
    </div>
</form>
{% endblock %}