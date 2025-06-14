{% extends "layout/main.volt" %}

{% block content %}
<h2>Modifier le client</h2>

<form method="post">
    <label for="nom_client">Nom :</label>
    <input type="text" id="nom_client" name="nom_client" value="{{ client.nom_client }}" required>

    <label for="prenom_client">Prénom :</label>
    <input type="text" id="prenom_client" name="prenom_client" value="{{ client.prenom_client }}" required>

    <label for="adresse_client">Adresse :</label>
    <input type="text" id="adresse_client" name="adresse_client" value="{{ client.adresse_client }}" required>

    <label for="telephone_client">Téléphone :</label>
    <input type="text" id="telephone_client" name="telephone_client" value="{{ client.telephone_client }}" required>

    <button type="submit">Modifier</button>
</form>
{% endblock %}</form>