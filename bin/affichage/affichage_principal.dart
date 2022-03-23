import 'dart:io';

import 'fonctions.dart';

class AffichagePrincipal {
  static String afficheMenu() {
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
        "|                           Menu Principal                              |\n" +
        "|                                                                       |\n" +
        "|   Veuillez choisir une action                                         |\n" +
        "|                                                                       |\n" +
        "|   1. Gestion de Produit                                               |\n" +
        "|   2. Gestion de Créer                                                 |\n" +
        "|   3. Gestion de Auteur                                                |\n" +
        "|   4. Gestion d'Editeur                                                |\n" +
        "|   5. Quitter                                                          |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  static String afficheActions() {
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
        "|                                Actions                                |\n" +
        "|                                                                       |\n" +
        "|   Veuillez choisir une action                                         |\n" +
        "|                                                                       |\n" +
        "|   1. Affichage                                                        |\n" +
        "|   2. Modification                                                     |\n" +
        "|   3. Ajout                                                            |\n" +
        "|   4. Suppression                                                      |\n" +
        "|   5. Retour                                                           |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  static String afficheAffichage() {
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
        "|                                Affichage                              |\n" +
        "|                                                                       |\n" +
        "|   Veuillez choisir une action                                         |\n" +
        "|                                                                       |\n" +
        "|   1. Affichage de toute la table                                      |\n" +
        "|   2. Affichage spécial                                                |\n" +
        "|   3. Retour                                                           |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  static String connexionImpossible() {
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
        "|                                                                       |\n" +
        "|                                                                       |\n" +
        "|                                                                       |\n" +
        "|               \x1B[31mConnexion à la base de donnée impossible\x1B[0m                |\n" +
        "|                                                                       |\n" +
        "|                                                                       |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  static int choixMenus(int n) {
    int choix = 0;
    while (choix < 1 || choix > n) {
      choix = MesFonctions.saisirInt();
    }
    return choix;
  }

  static String afficheAjoutReussite() {
    return "\x1B[32mAjout effectué\x1B[0m";
  }

  static String afficheAjoutEchec() {
    return "\x1B[31mEchec de l'ajout\x1B[0m";
  }

  static String afficheModificationReussite() {
    return "\x1B[32mModification effectué\x1B[0m";
  }

  static String afficheModificationEchec() {
    return "\x1B[31mEchec de la modification\x1B[0m";
  }

  static String afficheSupprimeReussite() {
    return "\x1B[32mSuppression effectué\x1B[0m";
  }

  static String afficheSupprimeEchec() {
    return "\x1B[31mEchec de la suppression\x1B[0m";
  }

  static String afficheAjoutEchecProduit() {
    return "\x1B[31mEchec de l'ajout aucun editeur correspondant à l'id donné\x1B[0m";
  }

  static String afficheAjoutProduit(bool etat) {
    if (etat) {
      return afficheAjoutReussite();
    }
    return afficheAjoutEchecProduit();
  }

  static String afficheAjout(bool etat) {
    if (etat) {
      return afficheAjoutReussite();
    }
    return afficheAjoutEchec();
  }

  static String afficheModification(bool etat) {
    if (etat) {
      return afficheModificationReussite();
    }
    return afficheModificationEchec();
  }

  static String afficheSupprime(bool etat) {
    if (etat) {
      return afficheSupprimeReussite();
    }
    return afficheSupprimeEchec();
  }

  static bool confirmationModification() {
    String confirmation = "";
    while (confirmation != "oui" && confirmation != "non") {
      print("Voulez vous vraiment effectuer la modification ?(oui/non)");
      confirmation = MesFonctions.saisirString();
      if (confirmation != "oui" && confirmation != "non") {
        print("\x1B[31mRéponse incorrecte(oui ou non)\x1B[0m");
      }
    }
    if (confirmation == "oui") {
      return true;
    }
    return false;
  }

  static bool confirmationSuppression() {
    String confirmation = "";
    while (confirmation != "oui" && confirmation != "non") {
      print("Voulez vous vraiment effectuer la supression ?(oui/non)");
      confirmation = MesFonctions.saisirString();
      if (confirmation != "oui" && confirmation != "non") {
        print("\x1B[31mRéponse incorrecte(oui ou non)\x1B[0m");
      }
    }
    if (confirmation == "oui") {
      return true;
    }
    return false;
  }

  static bool confirmationAjout() {
    String confirmation = "";
    while (confirmation != "oui" && confirmation != "non") {
      print("Voulez vous vraiment effectuer l'ajout ?(oui/non)");
      confirmation = MesFonctions.saisirString();
      if (confirmation != "oui" && confirmation != "non") {
        print("\x1B[31mRéponse incorrecte(oui ou non)\x1B[0m");
      }
    }
    if (confirmation == "oui") {
      return true;
    }
    return false;
  }
}
