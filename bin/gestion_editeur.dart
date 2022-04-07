import 'package:mysql1/mysql1.dart';

import 'bdd.dart';
import 'editeur.dart';
import 'gestion_produit.dart';

class GestionEditeur {
  List<Editeur> _lesEditeurs = [];
  BDD _laBDD = BDD();

  GestionEditeur();

  List<Editeur> getLesEditeurs() {
    return this._lesEditeurs;
  }

//Recupère tout les éditeurs présent dans la table Créer et les mets dans lesEditeurs
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

//Ajoute un éditeur à la table Editeur à partir d'un objet Editeur en paramètre retourne un bool
//pour savoir si l'opération a été éffectué
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

//Supprime un Editeur à partir d'un id donné en paramètre retourne un bool
//pour savoir si l'opération a été éffectué
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

//Modifie le nom d'un éditeur dans la table Editeur à partir d'un id d'editeur et un nouveau nom
//donné en paramètre retourne un bool pour savoir si l'opération a été éffectué
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

//Modifie la ville d'un éditeur dans la table Editeur à partir d'un id d'editeur et une nouvelle ville
//donné en paramètre retourne un bool pour savoir si l'opération a été éffectué
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

//Modifie le code postale d'un éditeur dans la table Editeur à partir d'un id d'editeur et un nouveau code postale
//donné en paramètre retourne un bool pour savoir si l'opération a été éffectué
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

//Modifie l'adresse d'un éditeur dans la table Editeur à partir d'un id d'editeur et une nouvelle adresse
//donné en paramètre retourne un bool pour savoir si l'opération a été éffectué
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

//Retourne une liste constenant tout les id des éditeurs présent dans la table Editeur
  Future<List<int>> getAllId() async {
    List<int> lesId = [];
    await initEditeur();
    for (Editeur elt in _lesEditeurs) {
      lesId.add(elt.getIdediteur());
    }
    return lesId;
  }

//Retourne une liste contenant les Editeur qui ont un id présent dans la liste d'id donné en paramètre
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

//Retourne une liste contenant les Editeur qui ont un nom correspondant au nom donné en paramètre
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

//Retourne une liste d'id d'éditeur pour ceux qui ont un nom correspondant à celui donné en paramètre
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
