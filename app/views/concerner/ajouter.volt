{% extends "layout/main.volt" %}

{% block content %}
<form action="{{ url('concerner/create') }}" method="post">
    <div>
        <label for="id_vente">ID Vente:</label>
        <input type="number" id="id_vente" name="id_vente" required>
    </div>
    <div>
        <label for="id_produit">ID Produit:</label>
        <input type="number" id="id_produit" name="id_produit" required>
    </div>
    <div>
        <label for="quantite_vendue">Quantité Vendue:</label>
        <input type="number" id="quantite_vendue" name="quantite_vendue" required>
    </div>
    <div>
        <label for="prix_unitaire_vendue">Prix Unitaire Vendue:</label>
        <input type="number" step="0.01" id="prix_unitaire_vendue" name="prix_unitaire_vendue" required>
    </div>
    <div>
        <button type="submit">Ajouter</button>
    </div>
</form>
{% endblock %}