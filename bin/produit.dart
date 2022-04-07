class Produit {
  int _idProduit;
  String _nomProduit;
  int _anneeParuptionProduit;
  double _prixProduit;
  int _quantiteProduit;
  String _typeProduit;
  int _idEditeur;

  Produit(
    this._idProduit,
    this._nomProduit,
    this._anneeParuptionProduit,
    this._prixProduit,
    this._quantiteProduit,
    this._typeProduit,
    this._idEditeur,
  );

  //Getter et Setter
  int getIdProduit() {
    return this._idProduit;
  }

  int getAnneeParuptionProduit() {
    return this._anneeParuptionProduit;
  }

  double getPrixProduit() {
    return this._prixProduit;
  }

  int getQuantiteProduit() {
    return this._quantiteProduit;
  }

  String getTypeProduit() {
    return this._typeProduit;
  }

  int getIdEditeur() {
    return this._idEditeur;
  }

  String getNomProduit() {
    return this._nomProduit;
  }

  void setNomProduit(nom) {
    this._nomProduit = nom;
  }

  void setIdProduit(int id) {
    this._idProduit = id;
  }

  void setAnneeParuptionProduit(int annee) {
    this._anneeParuptionProduit = annee;
  }

  void setPrixProduit(double prix) {
    this._prixProduit = prix;
  }

  void setQuantiteProduit(int quantite) {
    this._quantiteProduit = quantite;
  }

  void setTypeProduit(String type) {
    this._typeProduit = type;
  }

  void setIdEditeur(int id) {
    this._idEditeur = id;
  }
}
