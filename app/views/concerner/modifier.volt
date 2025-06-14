{% extends "layout.volt" %}

{% block main %}
<form method="post">
    <h2>Modifier Concerner</h2>
    <div>
        <label>ID Vente</label>
        <input type="text" name="id_vente" value="{{ concerner.id_vente }}" readonly>
    </div>
    <div>
        <label>ID Produit</label>
        <input type="text" name="id_produit" value="{{ concerner.id_produit }}" readonly>
    </div>
    <div>
        <label>Quantité Vendue</label>
        <input type="number" name="quantite_vendue" value="{{ concerner.quantite_vendue }}" required>
    </div>
    <div>
        <label>Prix Unitaire Vendue</label>
        <input type="number" step="0.01" name="prix_unitaire_vendue" value="{{ concerner.prix_unitaire_vendue }}" required>
    </div>
    <div>
        <button type="submit">Enregistrer</button>
        <a href="{{ url('concerner/index') }}">Annuler</a>
    </div>
</form>
{% endblock %}