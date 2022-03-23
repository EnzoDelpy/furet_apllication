import 'package:mysql1/mysql1.dart';

import 'bdd.dart';
import 'editeur.dart';
import 'gestion_produit.dart';
import 'produit.dart';

class GestionEditeur {
  List<Editeur> _lesEditeurs = [];
  BDD _laBDD = BDD();

  GestionEditeur();

  List<Editeur> getLesEditeurs() {
    return this._lesEditeurs;
  }

  Future<void> initEditeur() async {
    _lesEditeurs = [];
    MySqlConnection conn = await _laBDD.connexion();
    String requete = "Select * from Editeur";
    Results reponse = await conn.query(requete);
    conn.close();
    for (var row in reponse) {
      _lesEditeurs.add(Editeur(row[0], row[1], row[2], row[3], row[4]));
    }
  }

  Future<bool> ajouteEditeur(Editeur editeur) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete =
          "INSERT INTO Editeur(nomEditeur, villeEditeur, cpEditeur, adresseEditeur) VALUES('" +
              editeur.getNomEditeur() +
              "','" +
              editeur.getVilleEditeur() +
              "','" +
              editeur.getCpEditeur().toString() +
              "','" +
              editeur.getAdresseEditeur() +
              "');";
      await conn.query(requete);
      conn.close();
    } catch (e) {
      aAjouter = false;
    }
    return aAjouter;
  }

  Future<bool> supprimeEditeur(int id) async {
    bool aAjouter = true;
    GestionProduit gProduit = GestionProduit();
    await gProduit.supprimeProduitParEditeur(id);
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete =
          "DELETE FROM Editeur WHERE idEditeur=" + id.toString() + ";";
      try {
        await conn.query(requete);
      } catch (e) {
        print(e);
        aAjouter = false;
      }
      conn.close();
    } catch (e) {
      print(e);
      aAjouter = false;
    }
    return aAjouter;
  }

  Future<bool> modifieNomEditeur(int id, String nom) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "Update Editeur SET nomEditeur = '" +
          nom +
          "' WHERE idEditeur =" +
          id.toString() +
          ";";
      try {
        await conn.query(requete);
      } catch (e) {
        aAjouter = false;
      }
      conn.close();
    } catch (e) {
      aAjouter = false;
    }
    return aAjouter;
  }

  Future<bool> modifieVilleEditeur(int id, String ville) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "Update Editeur SET villeEditeur = '" +
          ville +
          "' WHERE idEditeur =" +
          id.toString() +
          ";";
      try {
        await conn.query(requete);
      } catch (e) {
        aAjouter = false;
      }
      conn.close();
    } catch (e) {
      aAjouter = false;
    }
    return aAjouter;
  }

  Future<bool> modifieCPEditeur(int id, int cp) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "Update Editeur SET cpEditeur = '" +
          cp.toString() +
          "' WHERE idEditeur =" +
          id.toString() +
          ";";
      try {
        await conn.query(requete);
      } catch (e) {
        aAjouter = false;
      }
      conn.close();
    } catch (e) {
      aAjouter = false;
    }
    return aAjouter;
  }

  Future<bool> modifieAdresseEditeur(int id, String adresse) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "Update Editeur SET adresseEditeur = '" +
          adresse +
          "' WHERE idEditeur =" +
          id.toString() +
          ";";
      try {
        await conn.query(requete);
      } catch (e) {
        aAjouter = false;
      }
      conn.close();
    } catch (e) {
      aAjouter = false;
    }
    return aAjouter;
  }

  Future<List<int>> getAllId() async {
    List<int> lesId = [];
    await initEditeur();
    for (Editeur elt in _lesEditeurs) {
      lesId.add(elt.getIdediteur());
    }
    return lesId;
  }

  Future<List<Editeur>> getEditeurParIdEditeur(List<int> lesId) async {
    List<Editeur> lesEditeurs = [];
    await initEditeur();
    for (Editeur elt in _lesEditeurs) {
      if (lesId.contains(elt.getIdediteur())) {
        lesEditeurs.add(elt);
      }
    }
    return lesEditeurs;
  }

  Future<List<Editeur>> getEditeurParNomEditeur(String nom) async {
    List<Editeur> lesEditeurs = [];
    await initEditeur();
    for (Editeur elt in _lesEditeurs) {
      if (elt.getNomEditeur() == nom) {
        lesEditeurs.add(elt);
      }
    }
    return lesEditeurs;
  }

  Future<List<int>> getIdParNomEditeur(String nom) async {
    List<int> lesId = [];
    await initEditeur();
    for (Editeur elt in _lesEditeurs) {
      if (elt.getNomEditeur() == nom) {
        lesId.add(elt.getIdediteur());
      }
    }
    return lesId;
  }
}
