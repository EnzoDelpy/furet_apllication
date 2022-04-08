import '../auteur.dart';
import 'affichage_produit.dart';
import 'fonctions.dart';

class AffichageAuteur {
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
        "|   1. En fonction de l'id d'un Auteur                                  |\n" +
        "|   2. En fonction de l'id d'un Produit                                 |\n" +
        "|   3. En fonction du nom d'un Auteur                                   |\n" +
        "|   4. En fonction du nom et prénom d'un Auteur                         |\n" +
        "|   5. En fonction du nom d'un Produit                                  |\n" +
        "|   6. Afficher tout                                                    |\n" +
        "|   7. Retour                                                           |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  //retourne un id d'auteur choisi par l'utilisateur qui est présent dans la liste donnée en paramètre
  static int getIdAuteur(List<int> idAuteur) {
    int id = 0;
    while (!idAuteur.contains(id)) {
      print("Veuillez saisir l'id de l'auteur");
      id = MesFonctions.saisirInt();
      if (!idAuteur.contains(id)) {
        print("\x1B[31mAucun auteur ne correspond à cet id\x1B[0m");
      }
    }
    return id;
  }

  //retourne un nouveau id d'auteur choisi par l'utilisateur qui est présent dans la liste donnée en paramètre
  static int getNouveauIdAuteur(List<int> idAuteur) {
    int id = 0;
    while (!idAuteur.contains(id)) {
      print("Veuillez saisir le nouveau id de l'auteur");
      id = MesFonctions.saisirInt();
      if (!idAuteur.contains(id)) {
        print("\x1B[31mAucun auteur ne correspond à cet id\x1B[0m");
      }
    }
    return id;
  }

  //retourne un nom d'auteur saisi par l'utilisateur
  static String getNomAuteur() {
    String nomAuteur = "";
    while (nomAuteur.isEmpty) {
      print("Veuillez saisir le nom de l'auteur");
      nomAuteur = MesFonctions.saisirString();
      if (nomAuteur.isEmpty) {
        print("Veuillez saisir un nom valide");
      }
    }
    return nomAuteur;
  }

  //retourne un nouveau nom d'auteur saisi par l'utilisateur
  static String getNouveauNomAuteur() {
    String nomAuteur = "";
    while (nomAuteur.isEmpty) {
      print("Veuillez saisir le nouveau nom de l'auteur");
      nomAuteur = MesFonctions.saisirString();
      if (nomAuteur.isEmpty) {
        print("Veuillez saisir un nom valide");
      }
    }
    return nomAuteur;
  }

  //retourne un prénom d'auteur saisi par l'utilisateur
  static String getPrenomAuteur() {
    String prenomAuteur = "";
    while (prenomAuteur.isEmpty) {
      print("Veuillez saisir le prenom de l'auteur");
      prenomAuteur = MesFonctions.saisirString();
      if (prenomAuteur.isEmpty) {
        print("Veuillez saisir un prénom valide");
      }
    }
    return prenomAuteur;
  }

  //retourne un nouveau prénom d'auteur saisi par l'utilisateur
  static String getNouveauPrenomAuteur() {
    String prenomAuteur = "";
    while (prenomAuteur.isEmpty) {
      print("Veuillez saisir le nouveau prenom de l'auteur");
      prenomAuteur = MesFonctions.saisirString();
      if (prenomAuteur.isEmpty) {
        print("Veuillez saisir un prénom valide");
      }
    }
    return prenomAuteur;
  }

  //retourne une liste contenant les données necessaire pour ajouter un nouveau auteur
  static List<String> ajouteAuteur() {
    List<String> lesAttributs = [];
    lesAttributs.add(getNomAuteur());
    lesAttributs.add(getPrenomAuteur());
    return lesAttributs;
  }

  //retourne l'id d'un auteur à supprimé saisie par l'utilisateur
  static int supprimeAuteur(List<int> idAuteur) {
    return getIdAuteur(idAuteur);
  }

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
        "|   1. Nom de l'auteur                                                  |\n" +
        "|   2. Prenom de l'auteur                                               |\n" +
        "|   3. Retour                                                           |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  //retourune une liste contenant un nouveau nom d'auteur et l'id d'auteur choisi par l'utilisateur
  static List<String> modifieNomAuteur(List<int> idAuteur) {
    List<String> lesAttributs = [];
    lesAttributs.add(getIdAuteur(idAuteur).toString());
    lesAttributs.add(getNouveauNomAuteur());
    return lesAttributs;
  }

  //retourune une liste contenant un nouveau prénom d'auteur et l'id d'auteur choisi par l'utilisateur
  static List<String> modifiePrenomAuteur(List<int> idAuteur) {
    List<String> lesAttributs = [];
    lesAttributs.add(getIdAuteur(idAuteur).toString());
    lesAttributs.add(getNouveauPrenomAuteur());
    return lesAttributs;
  }

  //retourune une liste contenant l'id d'auteur choisi par l'utilisateur
  static List<int> afficheAuteurParId(List<int> idAuteur) {
    return [getIdAuteur(idAuteur)];
  }

  //retourune une liste contenant l'id de produit d'auteur choisi par l'utilisateur
  static List<int> afficheAuteurParIdProduit(List<int> idProduit) {
    return [AffichageProduit.getIdProduit(idProduit)];
  }

  //retourne le nom de produit choisi par l'utilisateur
  static String afficheAuteurParNomProduit() {
    return AffichageProduit.getNomProduit();
  }

  //retourne le nom d'auteur choisi par l'utilisateur
  static String afficheAuteurParNom() {
    return getNomAuteur();
  }

  //retourne le prénom d'auteur choisi par l'utilisateur
  static String afficheAuteurParPrenom() {
    return getPrenomAuteur();
  }

  //retourne une liste contenant le prénom et nom d'auteur choisi par l'utilisateur
  static List<String> afficheAuteurParNomPrenom() {
    return [getNomAuteur(), getPrenomAuteur()];
  }

  //retourne un string contenant l'affichage des auteurs en paramètre
  static String afficheListeAuteur(List<Auteur> lesAuteurs) {
    String affichage =
        "\x1B[2J\x1B[0;0H\x1B[31mAucune donnée trouvé\x1B[0m\n\n1. Revenir au menu principal";
    if (lesAuteurs.isNotEmpty) {
      affichage = "\x1B[2J\x1B[0;0H\n";
      for (Auteur elt in lesAuteurs) {
        affichage +=
            "===========================================================================================================\nId de l'auteur            : " +
                elt.getIdAuteur().toString() +
                "\nNom de l'auteur           : " +
                elt.getNomAuteur() +
                "\nPrénom de l'auteur        : " +
                elt.getPrenomAuteur() +
                "\n";
      }
      affichage +=
          "===========================================================================================================\n\n1. Revenir au menu Principal";
    }
    return affichage;
  }
}
