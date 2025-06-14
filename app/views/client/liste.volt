{% extends 'layout/main.volt' %}

{% block content %}


<div class="container mt-4">
    <h2>Liste des Clients</h2>
    {% if clients is defined and clients|length > 0 %}
        <table class="table table-bordered table-striped mt-3">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Adresse</th>
                    <th>Téléphone</th>
                </tr>
            </thead>
            <tbody>
                {% for client in clients %}
                    <tr>
                        <td>{{ client.id_client }}</td>
                        <td>{{ client.nom_client }}</td>
                        <td>{{ client.prenom_client }}</td>
                        <td>{{ client.adresse_client }}</td>
                        <td>{{ client.telephone_client }}</td>
                    </tr>
                {% endfor %}
            </tbody>
        </table>
    {% else %}
        <div class="alert alert-info mt-3">Aucun client trouvé.</div>
    {% endif %}
</div>
{% endblock %}</div>