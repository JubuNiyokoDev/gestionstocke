<h2>Effectuer une Vente</h2>

<form action="{{ url('vente/create') }}" method="post">
    <div>
        <label for="id_client">Client :</label>
        <input type="number" name="id_client" id="id_client" required>
    </div>
    <div>
        <label for="id_utilisateur">Utilisateur :</label>
        <input type="number" name="id_utilisateur" id="id_utilisateur" required>
    </div>
    <div>
        <label for="date_vente">Date de Vente :</label>
        <input type="date" name="date_vente" id="date_vente" required>
    </div>
    <div>
        <label for="id_produit">Produit :</label>
        <input type="number" name="id_produit" id="id_produit" required>
    </div>
    <div>
        <button type="submit">Effectuer la Vente</button>
    </div>
</form>