import '../produit.dart';
import 'affichage_auteur.dart';
import 'affichage_editeur.dart';
import 'fonctions.dart';

class AffichageProduit {
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
        "|   1. Nom du produit                                                   |\n" +
        "|   2. Annee de paruption du produit                                    |\n" +
        "|   3. Prix du produit                                                  |\n" +
        "|   4. Quantité en stock du produit                                     |\n" +
        "|   5. Type du produit                                                  |\n" +
        "|   6. Id de l'éditeur                                                  |\n" +
        "|   7. Retour                                                           |\n" +
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
        "|   1. En fonction de l'id d'un produit                                 |\n" +
        "|   2. En fonction de l'id d'un auteur                                  |\n" +
        "|   3. En fonction de l'id d'un éditeur                                 |\n" +
        "|   4. En fonction du nom d'un produit                                  |\n" +
        "|   5. En fonction du nom d'un auteur                                   |\n" +
        "|   6. En fonction du nom et prénom d'un auteur                         |\n" +
        "|   7. En fonction du nom d'un éditeur                                  |\n" +
        "|   8. Plus d'options                                                   |\n" +
        "|   9. Retour                                                           |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  //retourne un string contenant le deuxième écran d'affichage du choix d'affichage
  static String afficheAffiche2() {
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
        "|   1. En fonction d'un prix maximum                                    |\n" +
        "|   2. En fonction d'un prix minimum                                    |\n" +
        "|   3. En fonction d'un prix minimum et d'un prix maximum               |\n" +
        "|   4. En fonction d'une année de paruption maximum                     |\n" +
        "|   5. En fonction d'une année de paruption minimum                     |\n" +
        "|   6. En fonction d'une année de paruption minimum et maximum          |\n" +
        "|   7. En fonction d'un type                                            |\n" +
        "|   8. Plus d'options                                                   |\n" +
        "|   9. Retour                                                           |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  //retourne un string contenant le troisieme écran d'affichage du choix d'affichage
  static String afficheAffiche3() {
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
        "|   1. Trier par prix croissant                                         |\n" +
        "|   2. Trier par prix décroissant                                       |\n" +
        "|   3. Trier par année croissante                                       |\n" +
        "|   4. Trier par année décroissante                                     |\n" +
        "|   5. Afficher                                                         |\n" +
        "|   6. Retour                                                           |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  // retourne un id de produit saisie par l'utilisateur si il est présent dans la liste donnée en paramètre
  static int getIdProduit(List<int> idProduit) {
    int id = 0;
    while (!idProduit.contains(id)) {
      print("Veuillez saisir l'id du produit");
      id = MesFonctions.saisirInt();
      if (!idProduit.contains(id)) {
        print("\x1B[31mAucun Produit ne correspond à cet id\x1B[0m");
      }
    }
    return id;
  }

  // retourne un id de produit saisie par l'utilisateur si il est présent dans la liste donnée en paramètre
  static int getNouveauIdProduit(List<int> idProduit) {
    int id = 0;
    while (!idProduit.contains(id)) {
      print("Veuillez saisir le nouveau id du produit");
      id = MesFonctions.saisirInt();
      if (!idProduit.contains(id)) {
        print("\x1B[31mAucun Produit ne correspond à cet id\x1B[0m");
      }
    }
    return id;
  }

  // retourne un nom de produit saisie par l'utilisateur
  static String getNomProduit() {
    String type = "";
    while (type.isEmpty) {
      print("Veuillez saisir le nom du produit");
      type = MesFonctions.saisirString();
      if (type.isEmpty) {
        print("Veuillez saisir un nom valide");
      }
    }
    return type;
  }

  // retourne un nouveau nom de produit saisie par l'utilisateur
  static String getNouveauNomProduit() {
    String type = "";
    while (type.isEmpty) {
      print("Veuillez saisir le nouveau nom du produit");
      type = MesFonctions.saisirString();
      if (type.isEmpty) {
        print("Veuillez saisir un nom valide");
      }
    }
    return type;
  }

  // retourne une année de paruption de produit saisie par l'utilisateur
  static int getAnneeParuptionProduit() {
    int annee = 0;
    while (annee < 1) {
      print("Veuillez saisir l'année de paruption du produit");
      annee = MesFonctions.saisirInt();
      if (annee < 1) {
        print("Année incorrecte veuillez saisir une année valide");
      }
    }
    return annee;
  }

  // retourne une année de paruption minimum de produit saisie par l'utilisateur
  static int getAnneeParuptionMinProduit() {
    int annee = 0;
    while (annee < 1) {
      print("Veuillez saisir l'année de paruption minimum du produit");
      annee = MesFonctions.saisirInt();
      if (annee < 1) {
        print("Année incorrecte veuillez saisir une année valide");
      }
    }
    return annee;
  }

  // retourne une année de paruption maximum de produit saisie par l'utilisateur
  static int getAnneeParuptionMaxProduit() {
    int annee = 0;
    while (annee < 1) {
      print("Veuillez saisir l'année de paruption maximum du produit");
      annee = MesFonctions.saisirInt();
      if (annee < 1) {
        print("Année incorrecte veuillez saisir une année valide");
      }
    }
    return annee;
  }

  // retourne une nouvelle année de paruption de produit saisie par l'utilisateur
  static int getNouvelleAnneeParuptionProduit() {
    int annee = 0;
    while (annee < 1) {
      print("Veuillez saisir la nouvelle année de paruption du produit");
      annee = MesFonctions.saisirInt();
      if (annee < 1) {
        print("Année incorrecte veuillez saisir une année valide");
      }
    }
    return annee;
  }

  // retourne le prix d'un produit saisie par l'utilisateur
  static double getPrixProduit() {
    double prix = -1;
    while (prix < 0) {
      print("Veuillez saisir le prix du produit");
      prix = MesFonctions.saisirDouble();
      if (prix < 0) {
        print("prix incorrect veuillez saisir un prix supérieur à 0");
      }
    }
    return prix;
  }

  // retourne le prix maximum d'un produit saisie par l'utilisateur
  static double getPrixMaxProduit() {
    double prix = -1;
    while (prix < 0) {
      print("Veuillez saisir le prix maximum du produit");
      prix = MesFonctions.saisirDouble();
      if (prix < 0) {
        print("prix incorrect veuillez saisir un prix supérieur ou égal à 0€");
      }
    }
    return prix;
  }

  // retourne le prix minimum d'un produit saisie par l'utilisateur
  static double getPrixMinProduit() {
    double prix = -1;
    while (prix < 0) {
      print("Veuillez saisir le prix minimum du produit");
      prix = MesFonctions.saisirDouble();
      if (prix < 0) {
        print("prix incorrect veuillez saisir un prix supérieur ou égal à 0€");
      }
    }
    return prix;
  }

  // retourne le nouveau prix d'un produit saisie par l'utilisateur
  static double getNouveauPrixProduit() {
    double prix = 0;
    while (prix < 0.001) {
      print("Veuillez saisir le novueau prix du produit");
      prix = MesFonctions.saisirDouble();
      if (prix < 0.001) {
        print("prix incorrect veuillez saisir un prix supérieur à 0.001€");
      }
    }
    return prix;
  }

  // retourne la quantité d'un produit saisie par l'utilisateur
  static int getQuantiteProduit() {
    int quantite = -1;
    while (quantite < 0) {
      print("Veuillez saisir la quantité en stock du produit");
      quantite = MesFonctions.saisirInt();
      if (quantite < 0) {
        print(
            "quantité incorrect veuillez saisir une quantité supérieure ou égale à 0");
      }
    }
    return quantite;
  }

  // retourne la nouvelle quantité d'un produit saisie par l'utilisateur
  static int getNouvelleQuantiteProduit() {
    int quantite = -1;
    while (quantite < 0) {
      print("Veuillez saisir la nouvelle quantité en stock du produit");
      quantite = MesFonctions.saisirInt();
      if (quantite < 0) {
        print(
            "quantité incorrect veuillez saisir une quantité supérieure ou égale à 0");
      }
    }
    return quantite;
  }

  // retourne le type d'un produit saisie par l'utilisateur
  static String getTypeProduit() {
    String type = "";
    while (type.isEmpty) {
      print("Veuillez saisir le type du produit");
      type = MesFonctions.saisirString();
      if (type.isEmpty) {
        print("Veuillez saisir un type de produit valide");
      }
    }
    return type;
  }

  // retourne le nouveau type d'un produit saisie par l'utilisateur
  static String getNouveauTypeProduit() {
    String type = "";
    while (type.isEmpty) {
      print("Veuillez saisir le nouveau type du produit");
      type = MesFonctions.saisirString();
      if (type.isEmpty) {
        print("Veuillez saisir un type de produit valide");
      }
    }
    return type;
  }

  // retourne une liste contenant toutes les données nécessaire pour créer un nouveau produit
  static List<String> ajouteProduit(List<int> idEditeur) {
    List<String> lesAttributs = [];
    lesAttributs.add(getNomProduit());
    lesAttributs.add(getAnneeParuptionProduit().toString());
    lesAttributs.add(getPrixProduit().toString());
    lesAttributs.add(getQuantiteProduit().toString());
    lesAttributs.add(getTypeProduit());
    lesAttributs.add(AffichageEditeur.getIdEditeur(idEditeur).toString());
    return lesAttributs;
  }

  // retourne l'id d'un produit à supprimer saisie par l'utilisateur
  static int supprimeProduit(List<int> idProduit) {
    return getIdProduit(idProduit);
  }

  // retourne une liste contenant le nouveau nom d'un produit et son id
  static List<String> modifieNomProduit(List<int> idProduit) {
    return [getIdProduit(idProduit).toString(), getNouveauNomProduit()];
  }

  // retourne une liste contenant la nouvelle année de paruption d'un produit et son id
  static List<String> modifieAnneeProduit(List<int> idProduit) {
    return [
      getIdProduit(idProduit).toString(),
      getNouvelleAnneeParuptionProduit().toString()
    ];
  }

  // retourne une liste contenant le nouveau prix d'un produit et son id
  static List<String> modifiePrixProduit(List<int> idProduit) {
    return [
      getIdProduit(idProduit).toString(),
      getNouveauPrixProduit().toString()
    ];
  }

  // retourne une liste contenant la nouvelle quantité d'un produit et son id
  static List<String> modifieQuantiteProduit(List<int> idProduit) {
    return [
      getIdProduit(idProduit).toString(),
      getNouvelleQuantiteProduit().toString()
    ];
  }

  // retourne une liste contenant le nouveau type d'un produit et son id
  static List<String> modifieTypeProduit(List<int> idProduit) {
    return [getIdProduit(idProduit).toString(), getNouveauTypeProduit()];
  }

  // retourne une liste contenant le nouveau id d'éditeur associé à un produit et son id
  static List<String> modifieIdEditeur(
      List<int> idProduit, List<int> idEditeur) {
    return [
      getIdProduit(idProduit).toString(),
      AffichageEditeur.getNouveauIdEditeur(idEditeur).toString()
    ];
  }

  //retourne une liste contenant l'id de produit saisie par un utilisateur
  static List<int> afficheProduitParId(List<int> idProduit) {
    return [getIdProduit(idProduit)];
  }

  //retourne une liste contenant l'id d'éditeur saisie par un utilisateur
  static List<int> afficheProduitParIdEditeur(List<int> idEditeur) {
    return [AffichageEditeur.getIdEditeur(idEditeur)];
  }

  //retourne une liste contenant l'id d'auteur saisir par un utilisateur
  static List<int> afficheProduitParIdAuteur(List<int> idAuteur) {
    return [AffichageAuteur.getIdAuteur(idAuteur)];
  }

  //retourne un nom de produit saisie par l'utilisateur
  static String afficheProduitParNom() {
    return getNomProduit();
  }

  //retourne un string contenant l'affichage des produits donnés en paramètre
  static String afficheListeProduit(List<Produit> lesProduits) {
    String affichage =
        "\x1B[2J\x1B[0;0H\x1B[31mAucune donnée trouvé\x1B[0m\n\n1. Revenir au menu principal";
    if (lesProduits.isNotEmpty) {
      affichage = "\x1B[2J\x1B[0;0H\n";
      for (Produit elt in lesProduits) {
        affichage +=
            "===========================================================================================================\nId du produit                 : " +
                elt.getIdProduit().toString() +
                "\nNom du produit                : " +
                elt.getNomProduit() +
                "\n1nnée de paruption du produit : " +
                elt.getAnneeParuptionProduit().toString() +
                "\nPrix du produit               : " +
                elt.getPrixProduit().toString() +
                "\nQuantité en stock du produit  : " +
                elt.getQuantiteProduit().toString() +
                "\nType du produit               : " +
                elt.getTypeProduit() +
                "\nId de l'éditeur               : " +
                elt.getIdEditeur().toString() +
                "\n";
      }
      affichage +=
          "===========================================================================================================\n\n1. Revenir au menu Principal";
    }
    return affichage;
  }
}
