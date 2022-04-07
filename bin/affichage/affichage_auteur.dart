import '../auteur.dart';
import 'affichage_produit.dart';
import 'fonctions.dart';

class AffichageAuteur {
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

  static List<String> ajouteAuteur() {
    List<String> lesAttributs = [];
    lesAttributs.add(getNomAuteur());
    lesAttributs.add(getPrenomAuteur());
    return lesAttributs;
  }

  static int supprimeAuteur(List<int> idAuteur) {
    return getIdAuteur(idAuteur);
  }

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

  static List<String> modifieNomAuteur(List<int> idAuteur) {
    List<String> lesAttributs = [];
    lesAttributs.add(getIdAuteur(idAuteur).toString());
    lesAttributs.add(getNouveauNomAuteur());
    return lesAttributs;
  }

  static List<String> modifiePrenomAuteur(List<int> idAuteur) {
    List<String> lesAttributs = [];
    lesAttributs.add(getIdAuteur(idAuteur).toString());
    lesAttributs.add(getNouveauPrenomAuteur());
    return lesAttributs;
  }

  static List<int> afficheAuteurParId(List<int> idAuteur) {
    return [getIdAuteur(idAuteur)];
  }

  static List<int> afficheAuteurParIdProduit(List<int> idProduit) {
    return [AffichageProduit.getIdProduit(idProduit)];
  }

  static String afficheAuteurParNomProduit() {
    return AffichageProduit.getNomProduit();
  }

  static String afficheAuteurParNom() {
    return getNomAuteur();
  }

  static String afficheAuteurParPrenom() {
    return getPrenomAuteur();
  }

  static List<String> afficheAuteurParNomPrenom() {
    return [getNomAuteur(), getPrenomAuteur()];
  }

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
