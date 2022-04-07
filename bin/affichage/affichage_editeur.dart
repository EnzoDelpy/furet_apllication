import '../editeur.dart';
import 'affichage_produit.dart';
import 'fonctions.dart';

class AffichageEditeur {
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

  static List<String> ajouteEditeur() {
    List<String> lesAttributs = [];
    lesAttributs.add(getNomEditeur());
    lesAttributs.add(getVilleEditeur());
    lesAttributs.add(getCPEditeur().toString());
    lesAttributs.add(getAdresseEditeur());
    return lesAttributs;
  }

  static int supprimeEditeur(List<int> idEditeur) {
    return getIdEditeur(idEditeur);
  }

  static List<String> modifieNomEditeur(List<int> idEditeur) {
    return [getIdEditeur(idEditeur).toString(), getNouveauNomEditeur()];
  }

  static List<String> modifieVilleEditeur(List<int> idEditeur) {
    return [getIdEditeur(idEditeur).toString(), getNouvelleVilleEditeur()];
  }

  static List<String> modifieCpEditeur(List<int> idEditeur) {
    return [
      getIdEditeur(idEditeur).toString(),
      getNouveauCPEditeur().toString()
    ];
  }

  static List<String> modifieAdresseEditeur(List<int> idEditeur) {
    return [getIdEditeur(idEditeur).toString(), getNouvelleAdresseEditeur()];
  }

  static List<int> afficheEditeurParId(List<int> idEditeur) {
    return [getIdEditeur(idEditeur)];
  }

  static int afficheEditeurParIdProduit(List<int> idProduit) {
    return AffichageProduit.getIdProduit(idProduit);
  }

  static String afficheEditeurParNom() {
    return getNomEditeur();
  }

  static String afficheEditeurParNomProduit() {
    return AffichageProduit.getNomProduit();
  }

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
