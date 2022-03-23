class Creer {
  int _idAuteur;
  int _idProduit;

  Creer(this._idAuteur, this._idProduit);

  int getIdAuteur() {
    return this._idAuteur;
  }

  int getIdProduit() {
    return this._idProduit;
  }

  void setIdAuteur(id) {
    this._idAuteur = id;
  }

  void setIdProduit(id) {
    this._idProduit = id;
  }
}
