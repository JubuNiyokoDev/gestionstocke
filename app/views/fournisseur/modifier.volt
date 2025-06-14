{% extends 'layout/main.volt' %}

{% block content %}
<form method="post" action="{{ url('fournisseur/modifier/' ~ fournisseur.id_fournisseur) }}">
    <h2>Modifier Fournisseur</h2>
    <div>
        <label for="nom_complet_fournisseur">Nom complet :</label>
        <input type="text" id="nom_complet_fournisseur" name="nom_complet_fournisseur" value="{{ fournisseur.nom_complet_fournisseur }}" required>
    </div>
    <div>
        <label for="adresse_fournisseur">Adresse :</label>
        <input type="text" id="adresse_fournisseur" name="adresse_fournisseur" value="{{ fournisseur.adresse_fournisseur }}" required>
    </div>
    <div>
        <label for="email_fournisseur">Email :</label>
        <input type="email" id="email_fournisseur" name="email_fournisseur" value="{{ fournisseur.email_fournisseur }}" required>
    </div>
    <div>
        <label for="telephone_fournisseur">Téléphone :</label>
        <input type="text" id="telephone_fournisseur" name="telephone_fournisseur" value="{{ fournisseur.telephone_fournisseur }}" required>
    </div>
    <div>
        <button type="submit">Enregistrer les modifications</button>
        <a href="{{ url('fournisseur/index') }}">Annuler</a>
    </div>
</form>
{% endblock %}