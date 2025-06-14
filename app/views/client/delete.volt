{% extends 'layouts/main.volt' %}

{% block content %}
    <h2>Supprimer le client</h2>
    {% if client is defined %}
        <p>Voulez-vous vraiment supprimer le client <strong>{{ client.nom_client }} {{ client.prenom_client }}</strong> ?</p>
        <form method="post" action="{{ url('client/delete/' ~ client.id_client) }}">
            <input type="hidden" name="id_client" value="{{ client.id_client }}">
            <button type="submit">Confirmer la suppression</button>
            <a href="{{ url('client/index') }}">Annuler</a>
        </form>
    {% else %}
        <p>Client introuvable.</p>
        <a href="{{ url('client/index') }}">Retour à la liste</a>
    {% endif %}
{% endblock %}