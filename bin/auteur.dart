class Auteur {
  int _idAuteur;
  String _nomAuteur;
  String _prenomAuteur;

  Auteur(this._idAuteur, this._nomAuteur, this._prenomAuteur);

  //Getter et Setter
  int getIdAuteur() {
    return this._idAuteur;
  }

  String getNomAuteur() {
    return this._nomAuteur;
  }

  String getPrenomAuteur() {
    return this._prenomAuteur;
  }

  void setIdAuteur(int id) {
    this._idAuteur = id;
  }

  void setNomAuteur(String nom) {
    this._nomAuteur = nom;
  }

  void setPrenomAuteur(String prenom) {
    this._prenomAuteur = prenom;
  }
}
