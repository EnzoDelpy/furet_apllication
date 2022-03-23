import 'package:mysql1/mysql1.dart';

import 'bdd.dart';
import 'gestion_creer.dart';
import 'produit.dart';

class GestionProduit {
  List<Produit> _lesProduits = [];
  BDD _laBDD = BDD();

  GestionProduit();

  List<Produit> getLesProduits() {
    return this._lesProduits;
  }

  Future<void> initProduit() async {
    _lesProduits = [];
    MySqlConnection conn = await _laBDD.connexion();
    String requete = "Select * from Produit";
    Results reponse = await conn.query(requete);
    conn.close();
    for (var row in reponse) {
      _lesProduits
          .add(Produit(row[0], row[1], row[2], row[3], row[4], row[5], row[6]));
    }
  }

  Future<bool> ajouteProduit(Produit produit) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete =
          "INSERT INTO Produit(nomProduit, anneeParuptionProduit, prixProduit, quantiteProduit, typeProduit, idEditeur) VALUES('" +
              produit.getNomProduit() +
              "','" +
              produit.getAnneeParuptionProduit().toString() +
              "','" +
              produit.getPrixProduit().toString() +
              "','" +
              produit.getQuantiteProduit().toString() +
              "','" +
              produit.getTypeProduit() +
              "','" +
              produit.getIdEditeur().toString() +
              "');";
      try {
        await conn.query(requete);
      } catch (e) {
        aAjouter = false;
      }
      conn.close();
    } catch (e) {
      print(e);
      aAjouter = false;
    }
    return aAjouter;
  }

  Future<bool> supprimeProduit(int id) async {
    bool aAjouter = true;
    GestionCreer gCreer = GestionCreer();
    await gCreer.supprimeToutProduit(id);
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete =
          "DELETE FROM Produit WHERE idProduit=" + id.toString() + ";";
      await conn.query(requete);
      conn.close();
    } catch (e) {
      aAjouter = false;
    }
    return aAjouter;
  }

  Future<bool> supprimeProduitParEditeur(int id) async {
    bool aAjouter = true;
    GestionCreer gCreer = GestionCreer();
    List<int> lesId = await getAllIdParEditeur(id);
    for (int elt in lesId) {
      await gCreer.supprimeToutProduit(elt);
    }
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete =
          "DELETE FROM Produit WHERE idEditeur=" + id.toString() + ";";
      await conn.query(requete);
      conn.close();
    } catch (e) {
      print(e);
      aAjouter = false;
    }
    return aAjouter;
  }

  Future<bool> modifieNomProduit(int id, String nom) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "Update Produit SET nomProduit = '" +
          nom +
          "' WHERE idProduit =" +
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

  Future<bool> modifieAnneeProduit(int id, int annee) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "Update Produit SET anneeParuptionProduit = '" +
          annee.toString() +
          "' WHERE idProduit =" +
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

  Future<bool> modifiePrixProduit(int id, double prix) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "Update Produit SET prixProduit = '" +
          prix.toString() +
          "' WHERE idProduit =" +
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

  Future<bool> modifieQuantiteProduit(int id, int quantite) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "Update Produit SET quantiteProduit = '" +
          quantite.toString() +
          "' WHERE idProduit =" +
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

  Future<bool> modifieTypeProduit(int id, String type) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "Update Produit SET typeProduit = '" +
          type +
          "' WHERE idProduit =" +
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

  Future<bool> modifieIdEditeur(int id, int idEditeur) async {
    bool aAjouter = true;
    try {
      MySqlConnection conn = await _laBDD.connexion();
      String requete = "Update Produit SET idEditeur = '" +
          idEditeur.toString() +
          "' WHERE idProduit =" +
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
    await initProduit();
    for (Produit elt in _lesProduits) {
      lesId.add(elt.getIdProduit());
    }
    return lesId;
  }

  Future<List<int>> getAllIdParEditeur(int id) async {
    List<int> lesId = [];
    await initProduit();
    for (Produit elt in _lesProduits) {
      if (elt.getIdEditeur() == id) {
        lesId.add(elt.getIdProduit());
      }
    }
    return lesId;
  }

  Future<List<int>> getIdEditeurParId(int id) async {
    List<int> lesEditeurs = [];
    await initProduit();
    for (Produit elt in _lesProduits) {
      if (elt.getIdProduit() == id) {
        lesEditeurs.add(elt.getIdEditeur());
      }
    }
    return lesEditeurs;
  }

  Future<List<int>> getIdEditeurParNom(String nom) async {
    List<int> lesEditeurs = [];
    await initProduit();
    for (Produit elt in _lesProduits) {
      if (elt.getNomProduit() == nom) {
        lesEditeurs.add(elt.getIdEditeur());
      }
    }
    return lesEditeurs;
  }

  Future<List<int>> getIdParNom(String nom) async {
    List<int> lesEditeurs = [];
    await initProduit();
    for (Produit elt in _lesProduits) {
      if (elt.getNomProduit() == nom) {
        lesEditeurs.add(elt.getIdProduit());
      }
    }
    return lesEditeurs;
  }

  Future<List<Produit>> getProduitParId(List<int> lesId) async {
    List<Produit> lesProduits = [];
    await initProduit();
    for (Produit elt in _lesProduits) {
      if (lesId.contains(elt.getIdProduit())) {
        lesProduits.add(elt);
      }
    }
    return lesProduits;
  }

  Future<List<Produit>> getProduitParType(String type) async {
    List<Produit> lesProduits = [];
    await initProduit();
    for (Produit elt in _lesProduits) {
      if (elt.getTypeProduit() == type) {
        lesProduits.add(elt);
      }
    }
    return lesProduits;
  }

  Future<List<Produit>> getProduitParNom(String nom) async {
    List<Produit> lesProduits = [];
    await initProduit();
    for (Produit elt in _lesProduits) {
      if (elt.getNomProduit() == nom) {
        lesProduits.add(elt);
      }
    }
    return lesProduits;
  }

  Future<List<Produit>> getProduitParIdEditeur(List<int> lesId) async {
    List<Produit> lesProduits = [];
    await initProduit();
    for (Produit elt in _lesProduits) {
      if (lesId.contains(elt.getIdEditeur())) {
        lesProduits.add(elt);
      }
    }
    return lesProduits;
  }

  List<Produit> triProduitParType(List<Produit> lesProduits, String type) {
    List<Produit> lesProduitsTrie = [];
    for (Produit elt in lesProduits) {
      if (elt.getTypeProduit() == type) {
        lesProduitsTrie.add(elt);
      }
    }
    return lesProduitsTrie;
  }

  List<Produit> triPrixMax(List<Produit> lesProduits, double prixMax) {
    List<Produit> lesProduitsTrie = [];
    for (Produit elt in lesProduits) {
      if (elt.getPrixProduit() <= prixMax) {
        lesProduitsTrie.add(elt);
      }
    }
    return lesProduitsTrie;
  }

  List<Produit> triPrixMin(List<Produit> lesProduits, double prixMin) {
    List<Produit> lesProduitsTrie = [];
    for (Produit elt in lesProduits) {
      if (elt.getPrixProduit() >= prixMin) {
        lesProduitsTrie.add(elt);
      }
    }
    return lesProduitsTrie;
  }

  List<Produit> triPrixMinMax(
      List<Produit> lesProduits, double prixMin, double prixMax) {
    return triPrixMin(triPrixMax(lesProduits, prixMax), prixMin);
  }

  List<Produit> triAnneeMax(List<Produit> lesProduits, int anneeMax) {
    List<Produit> lesProduitsTrie = [];
    for (Produit elt in lesProduits) {
      if (elt.getAnneeParuptionProduit() <= anneeMax) {
        lesProduitsTrie.add(elt);
      }
    }
    return lesProduitsTrie;
  }

  List<Produit> triAnneeMin(List<Produit> lesProduits, int anneeMin) {
    List<Produit> lesProduitsTrie = [];
    for (Produit elt in lesProduits) {
      if (elt.getAnneeParuptionProduit() >= anneeMin) {
        lesProduitsTrie.add(elt);
      }
    }
    return lesProduitsTrie;
  }

  List<Produit> triAnneeMinMax(
      List<Produit> lesProduits, int anneeMin, int anneeMax) {
    return triAnneeMax(triAnneeMin(lesProduits, anneeMin), anneeMax);
  }

  List<Produit> triPrixCroissant(List<Produit> lesProduits) {
    for (int k = 0; k < lesProduits.length; k++) {
      double prixMin = lesProduits[k].getPrixProduit();
      Produit produitMin = lesProduits[k];
      for (int i = k + 1; i < lesProduits.length; i++) {
        if (lesProduits[i].getPrixProduit() < prixMin) {
          prixMin = lesProduits[i].getPrixProduit();
          produitMin = lesProduits[i];
        }
      }
      lesProduits.remove(produitMin);
      lesProduits.insert(k, produitMin);
    }
    return lesProduits;
  }

  List<Produit> triPrixDecroissant(List<Produit> lesProduits) {
    for (int k = 0; k < lesProduits.length; k++) {
      double prixMax = lesProduits[k].getPrixProduit();
      Produit produitMax = lesProduits[k];
      for (int i = k + 1; i < lesProduits.length; i++) {
        if (lesProduits[i].getPrixProduit() > prixMax) {
          prixMax = lesProduits[i].getPrixProduit();
          produitMax = lesProduits[i];
        }
      }
      lesProduits.remove(produitMax);
      lesProduits.insert(k, produitMax);
    }
    return lesProduits;
  }

  List<Produit> triAnneeCroissant(List<Produit> lesProduits) {
    for (int k = 0; k < lesProduits.length; k++) {
      int anneeMin = lesProduits[k].getAnneeParuptionProduit();
      Produit produitMin = lesProduits[k];
      for (int i = k + 1; i < lesProduits.length; i++) {
        if (lesProduits[i].getAnneeParuptionProduit() < anneeMin) {
          anneeMin = lesProduits[i].getAnneeParuptionProduit();
          produitMin = lesProduits[i];
        }
      }
      lesProduits.remove(produitMin);
      lesProduits.insert(k, produitMin);
    }
    return lesProduits;
  }

  List<Produit> triAnneeDecroissant(List<Produit> lesProduits) {
    for (int k = 0; k < lesProduits.length; k++) {
      int anneeMax = lesProduits[k].getAnneeParuptionProduit();
      Produit produitMax = lesProduits[k];
      for (int i = k + 1; i < lesProduits.length; i++) {
        if (lesProduits[i].getAnneeParuptionProduit() > anneeMax) {
          anneeMax = lesProduits[i].getAnneeParuptionProduit();
          produitMax = lesProduits[i];
        }
      }
      lesProduits.remove(produitMax);
      lesProduits.insert(k, produitMax);
    }
    return lesProduits;
  }
}
