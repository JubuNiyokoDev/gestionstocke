{% extends "layouts/main.volt" %}

{% block content %}
<h2>Modifier le Stock</h2>

<form method="post" action="{{ url('stock/edit/' ~ stock.id_stock) }}">
    <div>
        <label for="id_produit">ID Produit :</label>
        <input type="number" id="id_produit" name="id_produit" value="{{ stock.id_produit }}" required>
    </div>
    <div>
        <label for="quantite_stock">Quantité en Stock :</label>
        <input type="number" id="quantite_stock" name="quantite_stock" value="{{ stock.quantite_stock }}" required>
    </div>
    <div>
        <button type="submit">Modifier</button>
        <a href="{{ url('stock/index') }}">Annuler</a>
    </div>
</form>
{% endblock %}