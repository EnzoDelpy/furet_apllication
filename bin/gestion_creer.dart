import 'package:mysql1/mysql1.dart';

import 'bdd.dart';
import 'creer.dart';

class GestionCreer {
  List<Creer> _lesCreer = [];
  BDD _laBDD = BDD();

  GestionCreer();

  List<Creer> getLesCreer() {
    return this._lesCreer;
  }

  Future<void> initCreer() async {
    _lesCreer = [];
    MySqlConnection conn = await _laBDD.connexion();
    String requete = "Select * from Creer";
    Results reponse = await conn.query(requete);
    conn.close();
    for (var row in reponse) {
      _lesCreer.add(Creer(row[0], row[1]));
    }
  }

  Future<bool> ajouteCreer(Creer creer) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "INSERT INTO Creer(idAuteur, idProduit) VALUES('" +
          creer.getIdAuteur().toString() +
          "','" +
          creer.getIdProduit().toString() +
          "');";
      await conn.query(requete);
      conn.close();
    } catch (e) {
      aAjouter = false;
    }
    return aAjouter;
  }

  Future<bool> supprimeCreer(int idAuteur, int idProduit) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "DELETE FROM Creer WHERE idEditeur=" +
          idAuteur.toString() +
          "AND idProduit =" +
          idProduit.toString() +
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

  Future<bool> supprimeToutProduit(int idProduit) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete =
          "DELETE FROM Creer WHERE idProduit=" + idProduit.toString() + ";";
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

  Future<bool> supprimeToutAuteur(int idAuteur) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete =
          "DELETE FROM Creer WHERE idAuteur=" + idAuteur.toString() + ";";
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

  Future<bool> modifieProduitCreer(
      int idAuteur, int idProduit, int nouvIdProduit) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "UPDATE Creer SET idProduit='" +
          nouvIdProduit.toString() +
          "' WHERE idProduit =" +
          idProduit.toString() +
          " AND idAuteur = " +
          idAuteur.toString() +
          ";";
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

  Future<bool> modifieAuteurCreer(
      int idAuteur, int idProduit, int nouvIdAuteur) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "UPDATE Creer SET idAuteur='" +
          nouvIdAuteur.toString() +
          "' WHERE idProduit =" +
          idProduit.toString() +
          " AND idAuteur = " +
          idAuteur.toString() +
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

  Future<List<int>> getAllIdAuteur() async {
    List<int> lesId = [];
    await initCreer();
    for (Creer elt in _lesCreer) {
      lesId.add(elt.getIdAuteur());
    }
    return lesId;
  }

  Future<List<int>> getAllIdProduit() async {
    List<int> lesId = [];
    await initCreer();
    for (Creer elt in _lesCreer) {
      lesId.add(elt.getIdProduit());
    }
    return lesId;
  }

  Future<List<int>> getIdAuteurParIdProduit(List<int> id) async {
    List<int> lesId = [];
    await initCreer();
    for (Creer elt in _lesCreer) {
      if (id.contains(elt.getIdProduit())) {
        lesId.add(elt.getIdAuteur());
      }
    }
    return lesId;
  }

  Future<List<int>> getIdProduitParIdAuteur(List<int> id) async {
    List<int> lesId = [];
    await initCreer();
    for (Creer elt in _lesCreer) {
      if (id.contains(elt.getIdAuteur())) {
        lesId.add(elt.getIdProduit());
      }
    }
    return lesId;
  }

  Future<List<Creer>> getCreerParIdAuteur(List<int> id) async {
    List<Creer> lesCreer = [];
    await initCreer();
    for (Creer elt in _lesCreer) {
      if (id.contains(elt.getIdAuteur())) {
        lesCreer.add(elt);
      }
    }
    return lesCreer;
  }

  Future<List<Creer>> getCreerParIdProduit(List<int> id) async {
    List<Creer> lesCreer = [];
    await initCreer();
    for (Creer elt in _lesCreer) {
      if (id.contains(elt.getIdProduit())) {
        lesCreer.add(elt);
      }
    }
    return lesCreer;
  }
}
