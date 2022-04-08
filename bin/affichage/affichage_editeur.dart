import '../editeur.dart';
import 'affichage_produit.dart';
import 'fonctions.dart';

class AffichageEditeur {
  //retourne un string contenant l'écran d'affichage du choix de modification
  static String afficheModifie() {
    String affichage = "\x1B[2J\x1B[0;0H\n" +
        "                 ███████ ██    ██ ██████  ███████ ████████   \n" +
        "                 ██      ██    ██ ██   ██ ██         ██          \n" +
        "                 █████   ██    ██ ██████  █████      ██          \n" +
        "                 ██      ██    ██ ██   ██ ██         ██          \n" +
        "                 ██       ██████  ██   ██ ███████    ██          \n" +
        "                                                                 \n" +
        "                                                                 \n" +
        "          ██████  ███████ ███████ ████████ ██  ██████  ███    ██ \n" +
        "         ██       ██      ██         ██    ██ ██    ██ ████   ██ \n" +
        "         ██   ███ █████   ███████    ██    ██ ██    ██ ██ ██  ██ \n" +
        "         ██    ██ ██           ██    ██    ██ ██    ██ ██  ██ ██ \n" +
        "          ██████  ███████ ███████    ██    ██  ██████  ██   ████ \n" +
        "=========================================================================\n" +
        "|                              Modifier                                 |\n" +
        "|                                                                       |\n" +
        "|   Veuillez choisir une action                                         |\n" +
        "|                                                                       |\n" +
        "|   1. Nom de l'éditeur                                                 |\n" +
        "|   2. Ville de l'éditeur                                               |\n" +
        "|   3. Code postale de l'éditeur                                        |\n" +
        "|   4. Adresse de l'éditeur                                             |\n" +
        "|   5. Retour                                                           |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  //retourne un string contenant le premier écran d'affichage du choix d'affichage
  static String afficheAffiche() {
    String affichage = "\x1B[2J\x1B[0;0H\n" +
        "                 ███████ ██    ██ ██████  ███████ ████████   \n" +
        "                 ██      ██    ██ ██   ██ ██         ██          \n" +
        "                 █████   ██    ██ ██████  █████      ██          \n" +
        "                 ██      ██    ██ ██   ██ ██         ██          \n" +
        "                 ██       ██████  ██   ██ ███████    ██          \n" +
        "                                                                 \n" +
        "                                                                 \n" +
        "          ██████  ███████ ███████ ████████ ██  ██████  ███    ██ \n" +
        "         ██       ██      ██         ██    ██ ██    ██ ████   ██ \n" +
        "         ██   ███ █████   ███████    ██    ██ ██    ██ ██ ██  ██ \n" +
        "         ██    ██ ██           ██    ██    ██ ██    ██ ██  ██ ██ \n" +
        "          ██████  ███████ ███████    ██    ██  ██████  ██   ████ \n" +
        "=========================================================================\n" +
        "|                              Affichage                                |\n" +
        "|                                                                       |\n" +
        "|   Veuillez choisir une action                                         |\n" +
        "|                                                                       |\n" +
        "|   1. En fonction de l'id d'un Editeur                                 |\n" +
        "|   2. En fonction de l'id d'un Produit                                 |\n" +
        "|   3. En fonction du nom d'un Editeur                                  |\n" +
        "|   4. En fonction du nom d'un Produit                                  |\n" +
        "|   5. Afficher tout                                                    |\n" +
        "|   6. Retour                                                           |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }


  //retourne l'id d'éditeur choisis par l'utilisiteur, il doit ếtre dans la liste donnée en parametre
  static int getIdEditeur(List<int> idEditeur) {
    int id = 0;
    while (!idEditeur.contains(id)) {
      print("Veuillez saisir l'id de l'éditeur");
      id = MesFonctions.saisirInt();
      if (!idEditeur.contains(id)) {
        print("\x1B[31mAucun éditeur ne correspond à cet id\x1B[0m");
      }
    }
    return id;
  }

  //retourne le nouveau id d'éditeur choisis par l'utilisiteur, il doit ếtre dans la liste donnée en parametre
  static int getNouveauIdEditeur(List<int> idEditeur) {
    int id = 0;
    while (!idEditeur.contains(id)) {
      print("Veuillez saisir le nouveau id de l'éditeur");
      id = MesFonctions.saisirInt();
      if (!idEditeur.contains(id)) {
        print("\x1B[31mAucun éditeur ne correspond à cet id\x1B[0m");
      }
    }
    return id;
  }

  //retourne le nom d'éditeur choisi par l'utilisateur
  static String getNomEditeur() {
    String nom = "";
    while (nom.isEmpty) {
      print("Veuillez saisir le nom de l'editeur");
      nom = MesFonctions.saisirString();
      if (nom.isEmpty) {
        print("Veuillez saisir un nom valide");
      }
    }
    return nom;
  }

  //retourne le nouveau nom d'éditeur choisi par l'utilisateur
  static String getNouveauNomEditeur() {
    String nom = "";
    while (nom.isEmpty) {
      print("Veuillez saisir le nouveau nom de l'editeur");
      nom = MesFonctions.saisirString();
      if (nom.isEmpty) {
        print("Veuillez saisir un nom valide");
      }
    }
    return nom;
  }

  //retourne la ville d'éditeur choisi par l'utilisateur
  static String getVilleEditeur() {
    String ville = "";
    while (ville.isEmpty) {
      print("Veuillez saisir la ville de l'editeur");
      ville = MesFonctions.saisirString();
      if (ville.isEmpty) {
        print("Veuillez saisir une ville valide");
      }
    }
    return ville;
  }

  //retourne la nouvelle ville d'éditeur choisi par l'utilisateur
  static String getNouvelleVilleEditeur() {
    String ville = "";
    while (ville.isEmpty) {
      print("Veuillez saisir la nouvelle ville de l'editeur");
      ville = MesFonctions.saisirString();
      if (ville.isEmpty) {
        print("Veuillez saisir une ville valide");
      }
    }
    return ville;
  }

  //retourne le code postale d'éditeur choisi par l'utilisateur
  static int getCPEditeur() {
    int cP = 0;
    while (cP < 1) {
      print("Veuillez saisir le code postale de l'éditeur");
      cP = MesFonctions.saisirInt();
      if (cP < 1) {
        print("id incorrect veuillez saisir un id supérieur à 0");
      }
    }
    return cP;
  }

  //retourne le nouveau code postale d'éditeur choisi par l'utilisateur
  static int getNouveauCPEditeur() {
    int cP = 0;
    while (cP < 1) {
      print("Veuillez saisir le nouveau code postale de l'éditeur");
      cP = MesFonctions.saisirInt();
      if (cP < 1) {
        print("id incorrect veuillez saisir un id supérieur à 0");
      }
    }
    return cP;
  }

  //retourne l'adresse d'éditeur choisi par l'utilisateur
  static String getAdresseEditeur() {
    String adresse = "";
    while (adresse.isEmpty) {
      print("Veuillez saisir l'adresse de l'editeur");
      adresse = MesFonctions.saisirString();
      if (adresse.isEmpty) {
        print("Veuillez saisir une adresse valide");
      }
    }
    return adresse;
  }

  //retourne la nouvelle adresse d'éditeur choisi par l'utilisateur
  static String getNouvelleAdresseEditeur() {
    String adresse = "";
    while (adresse.isEmpty) {
      print("Veuillez saisir la nouvelle adresse de l'editeur");
      adresse = MesFonctions.saisirString();
      if (adresse.isEmpty) {
        print("Veuillez saisir une adresse valide");
      }
    }
    return adresse;
  }

  //retourne une liste contenant toutes les données pour ajouter un éditeur
  static List<String> ajouteEditeur() {
    List<String> lesAttributs = [];
    lesAttributs.add(getNomEditeur());
    lesAttributs.add(getVilleEditeur());
    lesAttributs.add(getCPEditeur().toString());
    lesAttributs.add(getAdresseEditeur());
    return lesAttributs;
  }

  //retourne l'id de l'éditeur à supprimé donnée par l'utilisateur
  static int supprimeEditeur(List<int> idEditeur) {
    return getIdEditeur(idEditeur);
  }

  //retourne une liste contenant le nouveau nom d'éditeur et l'id d'éditeur à modifier
  static List<String> modifieNomEditeur(List<int> idEditeur) {
    return [getIdEditeur(idEditeur).toString(), getNouveauNomEditeur()];
  }

  //retourne une liste contenant la nouvelle ville d'éditeur et l'id d'éditeur à modifier
  static List<String> modifieVilleEditeur(List<int> idEditeur) {
    return [getIdEditeur(idEditeur).toString(), getNouvelleVilleEditeur()];
  }

  //retourne une liste contenant le nouveau code postale et l'id d'éditeur à modifier
  static List<String> modifieCpEditeur(List<int> idEditeur) {
    return [
      getIdEditeur(idEditeur).toString(),
      getNouveauCPEditeur().toString()
    ];
  }

  //retourne une liste contenant la nouvelle adresse et l'id d'éditeur à modifier
  static List<String> modifieAdresseEditeur(List<int> idEditeur) {
    return [getIdEditeur(idEditeur).toString(), getNouvelleAdresseEditeur()];
  }

  //retourne une liste contenant l'id de l'éditeur donné en paramètre
  static List<int> afficheEditeurParId(List<int> idEditeur) {
    return [getIdEditeur(idEditeur)];
  }

  //retourne un id de produit saisi par l'utilisateur
  static int afficheEditeurParIdProduit(List<int> idProduit) {
    return AffichageProduit.getIdProduit(idProduit);
  }

  //retourne un nom d'éditeur donné par l'utilisateur
  static String afficheEditeurParNom() {
    return getNomEditeur();
  }

  //retourne un nom de produit donné par l'utilisateur
  static String afficheEditeurParNomProduit() {
    return AffichageProduit.getNomProduit();
  }

  //retourne un string contenant l'affichage des éditeurs donné en paramètre
  static String afficheListeEditeur(List<Editeur> lesEditeurs) {
    String affichage =
        "\x1B[2J\x1B[0;0H\x1B[31mAucune donnée trouvé\x1B[0m\n\n1. Revenir au menu principal";
    if (lesEditeurs.isNotEmpty) {
      affichage = "\x1B[2J\x1B[0;0H\n";
      for (Editeur elt in lesEditeurs) {
        affichage +=
            "===========================================================================================================\nId de l'éditeur           : " +
                elt.getIdediteur().toString() +
                "\nNom de l'éditeur          : " +
                elt.getNomEditeur() +
                "\nVille de l'éditeur        : " +
                elt.getVilleEditeur() +
                "\nCode postale de l'éditeur : " +
                elt.getCpEditeur().toString() +
                "\nAdresse de l'éditeur      : " +
                elt.getAdresseEditeur() +
                "\n";
      }
      affichage +=
          "===========================================================================================================\n\n1. Revenir au menu Principal";
    }
    return affichage;
  }
}
