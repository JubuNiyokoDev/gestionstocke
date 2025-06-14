{% extends 'layouts/main.volt' %}

{% block content %}
<div class="container mt-5">
    <h2>Supprimer Concerner</h2>
    {% if concerner is defined %}
        <div class="alert alert-warning">
            <p>Êtes-vous sûr de vouloir supprimer cet enregistrement ?</p>
            <ul>
                <li><strong>ID Vente:</strong> {{ concerner.id_vente }}</li>
                <li><strong>ID Produit:</strong> {{ concerner.id_produit }}</li>
                <li><strong>Quantité Vendue:</strong> {{ concerner.quantite_vendue }}</li>
                <li><strong>Prix Unitaire Vendue:</strong> {{ concerner.prix_unitaire_vendue }}</li>
            </ul>
            <form method="post" action="{{ url('concerner/delete/' ~ concerner.id_vente ~ '/' ~ concerner.id_produit) }}">
                <input type="hidden" name="confirm" value="yes">
                <button type="submit" class="btn btn-danger">Supprimer</button>
                <a href="{{ url('concerner/index') }}" class="btn btn-secondary">Annuler</a>
            </form>
        </div>
    {% else %}
        <div class="alert alert-danger">
            Enregistrement non trouvé.
        </div>
        <a href="{{ url('concerner/index') }}" class="btn btn-primary">Retour</a>
    {% endif %}
</div>
{% endblock %}