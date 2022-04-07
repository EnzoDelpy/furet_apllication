class Editeur {
  int _idEditeur;
  String _nomEditeur;
  String _villeEditeur;
  int _cpEditeur;
  String _adresseEditeur;

  Editeur(this._idEditeur, this._nomEditeur, this._villeEditeur,
      this._cpEditeur, this._adresseEditeur);

  //Getter et Setter
  int getIdediteur() {
    return this._idEditeur;
  }

  String getNomEditeur() {
    return this._nomEditeur;
  }

  String getVilleEditeur() {
    return this._villeEditeur;
  }

  int getCpEditeur() {
    return this._cpEditeur;
  }

  String getAdresseEditeur() {
    return this._adresseEditeur;
  }

  void setIdEditeur(int id) {
    this._idEditeur = id;
  }

  void setNomEditeur(String nom) {
    this._nomEditeur = nom;
  }

  void setVilleEditeur(String ville) {
    this._villeEditeur = ville;
  }

  void setCpEditeur(int cp) {
    this._cpEditeur = cp;
  }

  void setAdresseEditeur(String adresse) {
    this._adresseEditeur = adresse;
  }
}
