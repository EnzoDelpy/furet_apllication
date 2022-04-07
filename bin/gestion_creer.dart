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

//Recupère tout les creer présent dans la table Créer et les mets dans lesCreer
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

//Ajoute un creer à la table Creer à partir d'un objet Creer en paramètre retourne un bool
//pour savoir si l'opération a été éffectué
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

//Supprime un Creer à partir d'un id donné en paramètre retourne un bool
//pour savoir si l'opération a été éffectué
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

//Supprime toutes les valeurs contenant un id de produit donnée en paramètre retourne un bool
//pour savoir si l'opération a été éffectué
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

//Supprime toutes les valeurs contenant un id d'auteur donnée en paramètre retourne un bool
//pour savoir si l'opération a été éffectué
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

//Modifie l'id d'un produit dans la table Creer à partir d'un id d'auteur, un id de produit et un nouveau id de produit
//donné en paramètre retourne un bool pour savoir si l'opération a été éffectué
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

//Modifie l'id d'un auteur dans la table Creer à partir d'un id d'auteur, un id de produit et un nouveau id d'auteur
//donné en paramètre retourne un bool pour savoir si l'opération a été éffectué
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

//Retourne une liste d'entier contennant tout les id d'auteur présent dans la table Creer
  Future<List<int>> getAllIdAuteur() async {
    List<int> lesId = [];
    await initCreer();
    for (Creer elt in _lesCreer) {
      lesId.add(elt.getIdAuteur());
    }
    return lesId;
  }

//Retourne une liste d'entier contennant tout les id de produit présent dans la table Creer
  Future<List<int>> getAllIdProduit() async {
    List<int> lesId = [];
    await initCreer();
    for (Creer elt in _lesCreer) {
      lesId.add(elt.getIdProduit());
    }
    return lesId;
  }

//Retourne une liste contenant les id d'auteur qui sont associer à l'id produit donnée en paramètre
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

//Retourne une liste contenant les id d'auteur qui sont associer à l'id produit donnée en paramètre
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

//Retourne une liste contenant les Creer qui ont pour idAuteur l'id donné en paramètre
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

//Retourne une liste contenant les Creer qui ont pour idProduit l'id donné en paramètre
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
