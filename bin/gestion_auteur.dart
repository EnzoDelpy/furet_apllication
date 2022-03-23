import 'package:mysql1/mysql1.dart';

import 'auteur.dart';
import 'bdd.dart';
import 'gestion_creer.dart';

class GestionAuteur {
  List<Auteur> _lesAuteurs = [];
  BDD _laBDD = BDD();

  GestionAuteur();

  List<Auteur> getLesAuteurs() {
    return this._lesAuteurs;
  }

  Future<void> initAuteur() async {
    _lesAuteurs = [];
    MySqlConnection conn = await _laBDD.connexion();
    String requete = "Select * from Auteur";
    Results reponse = await conn.query(requete);
    conn.close();
    for (var row in reponse) {
      _lesAuteurs.add(Auteur(row[0], row[1], row[2]));
    }
  }

  Future<bool> ajouteAuteur(Auteur auteur) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "INSERT INTO Auteur(nomAuteur, prenomAuteur) VALUES('" +
          auteur.getNomAuteur() +
          "','" +
          auteur.getPrenomAuteur() +
          "');";
      await conn.query(requete);
      conn.close();
    } catch (e) {
      aAjouter = false;
    }
    return aAjouter;
  }

  Future<bool> supprimeAuteur(int id) async {
    bool aAjouter = true;
    GestionCreer gCreer = GestionCreer();
    await gCreer.supprimeToutAuteur(id);
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete =
          "DELETE FROM Auteur WHERE idAuteur=" + id.toString() + ";";
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

  Future<bool> modifieNomAuteur(int id, String nom) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "Update Auteur SET nomAuteur = '" +
          nom +
          "' WHERE idAuteur =" +
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

  Future<bool> modifiePrenomAuteur(int id, String prenom) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "Update Auteur SET prenomAuteur = '" +
          prenom +
          "' WHERE idAuteur =" +
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
    await initAuteur();
    for (Auteur elt in _lesAuteurs) {
      lesId.add(elt.getIdAuteur());
    }
    return lesId;
  }

  Future<List<Auteur>> getAuteurParIdAuteur(List<int> lesId) async {
    List<Auteur> lesAuteurs = [];
    await initAuteur();
    for (Auteur elt in _lesAuteurs) {
      if (lesId.contains(elt.getIdAuteur())) {
        lesAuteurs.add(elt);
      }
    }
    return lesAuteurs;
  }

  Future<List<Auteur>> getAuteurParNomAuteur(String nom) async {
    List<Auteur> lesAuteurs = [];
    await initAuteur();
    for (Auteur elt in _lesAuteurs) {
      if (elt.getNomAuteur() == nom) {
        lesAuteurs.add(elt);
      }
    }
    return lesAuteurs;
  }

  Future<List<Auteur>> getAuteurParPrenomAuteur(String prenom) async {
    List<Auteur> lesAuteurs = [];
    await initAuteur();
    for (Auteur elt in _lesAuteurs) {
      if (elt.getPrenomAuteur() == prenom) {
        lesAuteurs.add(elt);
      }
    }
    return lesAuteurs;
  }

  Future<List<Auteur>> getAuteurParNomPrenomAuteur(
      String nom, String prenom) async {
    List<Auteur> lesAuteurs = [];
    await initAuteur();
    for (Auteur elt in _lesAuteurs) {
      if (elt.getPrenomAuteur() == prenom && elt.getNomAuteur() == nom) {
        lesAuteurs.add(elt);
      }
    }
    return lesAuteurs;
  }

  Future<List<int>> getIdParNomAuteur(String nom) async {
    List<int> lesId = [];
    await initAuteur();
    for (Auteur elt in _lesAuteurs) {
      if (elt.getNomAuteur() == nom) {
        lesId.add(elt.getIdAuteur());
      }
    }
    return lesId;
  }

  Future<List<int>> getIdParNomPrenomAuteur(String nom, String prenom) async {
    List<int> lesId = [];
    await initAuteur();
    for (Auteur elt in _lesAuteurs) {
      if (elt.getPrenomAuteur() == prenom && elt.getNomAuteur() == nom) {
        lesId.add(elt.getIdAuteur());
      }
    }
    return lesId;
  }
}
