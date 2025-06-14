{% extends "layout/main.volt" %}

{% block content %}
<h2>Supprimer le fournisseur</h2>

{% if fournisseur is defined %}
    <p>Voulez-vous vraiment supprimer le fournisseur suivant&nbsp;?</p>
    <ul>
        <li><strong>Nom :</strong> {{ fournisseur.nom_complet_fournisseur }}</li>
        <li><strong>Adresse :</strong> {{ fournisseur.adresse_fournisseur }}</li>
        <li><strong>Email :</strong> {{ fournisseur.email_fournisseur }}</li>
        <li><strong>Téléphone :</strong> {{ fournisseur.telephone_fournisseur }}</li>
    </ul>
    <form method="post" action="{{ url('fournisseur/delete/' ~ fournisseur.id_fournisseur) }}">
        <input type="hidden" name="confirm" value="yes">
        <button type="submit" class="btn btn-danger">Supprimer</button>
        <a href="{{ url('fournisseur/index') }}" class="btn btn-secondary">Annuler</a>
    </form>
{% else %}
    <div class="alert alert-danger">Fournisseur non trouvé.</div>
    <a href="{{ url('fournisseur/index') }}" class="btn btn-secondary">Retour</a>
{% endif %}
{% endblock %}