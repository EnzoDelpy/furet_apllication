import 'package:mysql1/mysql1.dart';
import 'settings_connexion.dart' as settingsco;

class BDD {
  late ConnectionSettings settings;

  BDD() {
    settings = ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: settingsco.user,
      password: settingsco.password,
      db: settingsco.db,
    );
  }

// retourne une connexion à la base de donnée
  Future<MySqlConnection> connexion() async {
    return await MySqlConnection.connect(settings);
  }

//Test si la connexion est possible retourne un bool correspondant à la réponse
  Future<bool> testConnexion() async {
    bool test = false;
    try {
      MySqlConnection conn = await connexion();
      conn.close();
      test = true;
    } catch (e) {}
    return test;
  }

//Retourne une liste contenant le nom des tables manquantes
  Future<List<String>> checkTableManquantes() async {
    List<String> tablesManquantes = ["Creer", "Produit", "Auteur", "Editeur"];
    MySqlConnection conn = await connexion();
    String requete = "show tables";
    Results reponse = await conn.query(requete);
    conn.close();
    for (var row in reponse) {
      if (row[0] == "Auteur") {
        tablesManquantes.remove("Auteur");
      } else if (row[0] == "Editeur") {
        tablesManquantes.remove("Editeur");
      } else if (row[0] == "Produit") {
        tablesManquantes.remove("Produit");
      } else if (row[0] == "Creer") {
        tablesManquantes.remove("Creer");
      }
    }
    return tablesManquantes;
  }

//Créer les tables manquantes
  Future<void> createTables() async {
    List<String> tablesManquantes = await checkTableManquantes();
    if (tablesManquantes.contains("Editeur")) {
      String requete =
          'CREATE TABLE Editeur(idEditeur int NOT NULL AUTO_INCREMENT PRIMARY KEY, nomEditeur varchar(255), villeEditeur varchar(255), cpEditeur int, adresseEditeur varchar(255));';
      MySqlConnection conn = await connexion();
      await conn.query(requete);
      conn.close();
    }
    if (tablesManquantes.contains("Auteur")) {
      String requete =
          'CREATE TABLE Auteur(idAuteur int NOT NULL AUTO_INCREMENT PRIMARY KEY, nomAuteur varchar(255), prenomAuteur varchar(255));';
      MySqlConnection conn = await connexion();
      await conn.query(requete);
      conn.close();
    }
    if (tablesManquantes.contains("Produit")) {
      String requete =
          'CREATE TABLE Produit(idProduit int NOT NULL AUTO_INCREMENT PRIMARY KEY, nomProduit varchar(254), anneeParuptionProduit int, prixProduit float, quantiteProduit int, typeProduit varchar(255) ,idEditeur int, FOREIGN KEY (idEditeur) REFERENCES Editeur(idEditeur));';
      MySqlConnection conn = await connexion();
      await conn.query(requete);
      conn.close();
    }
    if (tablesManquantes.contains("Creer")) {
      String requete =
          'CREATE TABLE Creer(idProduit int, idAuteur int, FOREIGN KEY (idProduit) REFERENCES Produit(idProduit), FOREIGN KEY (idAuteur) REFERENCES Auteur(idAuteur));';
      MySqlConnection conn = await connexion();
      await conn.query(requete);
      conn.close();
    }
  }

//Supprimme une table donnée en paramètre
  Future<void> dropTable(String table) async {
    MySqlConnection conn = await connexion();
    try {
      await conn.query("DROP TABLES IF EXISTS " + table + ";");
    } catch (e) {}
    conn.close();
  }

//Suprimme toutes les tables
  Future<void> dropAllTable() async {
    await dropTable("Creer");
    await dropTable("Produit");
    await dropTable("Editeur");
    await dropTable("Auteur");
  }
}
