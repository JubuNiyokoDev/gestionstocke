{% extends "layout/main.volt" %}

<div class="container mt-4">
    <h2>Liste des Fournisseurs</h2>
    {% if fournisseurs is defined and fournisseurs|length > 0 %}
        <table class="table table-bordered table-striped mt-3">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nom</th>
                    <th>Email</th>
                    <th>Téléphone</th>
                    <th>Adresse</th>
                </tr>
            </thead>
            <tbody>
                {% for fournisseur in fournisseurs %}
                    <tr>
                        <td>{{ fournisseur.id_fournisseur }}</td>
                        <td>{{ fournisseur.nom_complet_fournisseur }}</td>
                        <td>{{ fournisseur.email_fournisseur }}</td>
                        <td>{{ fournisseur.telephone_fournisseur }}</td>
                        <td>{{ fournisseur.adresse_fournisseur }}</td>
                    </tr>
                {% endfor %}
            </tbody>
        </table>
    {% else %}
        <div class="alert alert-info mt-3">Aucun fournisseur trouvé.</div>
    {% endif %}
</div>