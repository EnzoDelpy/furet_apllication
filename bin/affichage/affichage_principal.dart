import 'dart:io';

import 'fonctions.dart';
import '../settings_connexion.dart' as settingsCo;

class AffichagePrincipal {

  //retourne un string contenant le menu principal
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
        "|   6. Quitter et supprimer toutes les tables                           |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  //retourne un string contenant le menu de connexion
  static String afficheConnexion() {
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
        "|                    Connexion à la base de donnée                      |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  //retourne un string contenant le menu qui apparait si il manque des tables
  static String afficheTableManquantes() {
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
        "|                           Tables Manquantes                           |\n" +
        "|                                                                       |\n" +
        "|   Veuillez choisir une action                                         |\n" +
        "|                                                                       |\n" +
        "|   1. Créer les tables manquantes                                      |\n" +
        "|   2. Quitter                                                          |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  //retourne un string contenant le menu des actions
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

  //retourne un string contenant un menu pour dire que la connexion est impossible
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

  //retourne un entier choisis par l'utilisateur qui est compris entre 1 et le parametre n
  static int choixMenus(int n) {
    int choix = 0;
    while (choix < 1 || choix > n) {
      choix = MesFonctions.saisirInt();
    }
    return choix;
  }

  //retourne un string contenant le message de reussite d'ajout
  static String afficheAjoutReussite() {
    return "\x1B[32mAjout effectué\x1B[0m";
  }

  //retourne un string contenant le message d'échec d'ajout
  static String afficheAjoutEchec() {
    return "\x1B[31mEchec de l'ajout\x1B[0m";
  }

  //retourne un string contenant le message de reussite de modification
  static String afficheModificationReussite() {
    return "\x1B[32mModification effectué\x1B[0m";
  }

  //retourne un string contenant le message d'échec de modification
  static String afficheModificationEchec() {
    return "\x1B[31mEchec de la modification\x1B[0m";
  }

  //retourne un string contenant le message de reussite de supression
  static String afficheSupprimeReussite() {
    return "\x1B[32mSuppression effectué\x1B[0m";
  }

  //retourne un string contenant le message d'échec de supression
  static String afficheSupprimeEchec() {
    return "\x1B[31mEchec de la suppression\x1B[0m";
  }

  //retourne le bon message en fonction de l'etat donnée en parametre
  static String afficheAjout(bool etat) {
    if (etat) {
      return afficheAjoutReussite();
    }
    return afficheAjoutEchec();
  }

  //retourne le bon message en fonction de l'etat donnée en parametre
  static String afficheModification(bool etat) {
    if (etat) {
      return afficheModificationReussite();
    }
    return afficheModificationEchec();
  }

  //retourne le bon message en fonction de l'etat donnée en parametre
  static String afficheSupprime(bool etat) {
    if (etat) {
      return afficheSupprimeReussite();
    }
    return afficheSupprimeEchec();
  }

  //retourne un bool correspondant au choix de l'utilisateur lors de la confirmation
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

  //retourne un bool correspondant au choix de l'utilisateur lors de la confirmation
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

  //retourne un bool correspondant au choix de l'utilisateur lors de la confirmation
  static bool confirmationSuppressionTables() {
    String confirmation = "";
    while (confirmation != "oui" && confirmation != "non") {
      print(
          "Voulez vous vraiment effectuer la supression des tables ?(oui/non)");
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

  //retourne un bool correspondant au choix de l'utilisateur lors de la confirmation
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

  //retourne un string correspondant au nom d'utilisateur saisie par l'utilisateur
  static String getUser() {
    String user = "";
    while (user.isEmpty) {
      print("Veuillez saisir le nom d'utilisateur");
      user = MesFonctions.saisirString();
    }
    return user;
  }

  //retourne un string correspondant au mot de passe saisie par l'utilisateur
  static String getPassword() {
    print("Veuillez saisir le mot de passe");
    stdin.echoMode = false;
    String password = MesFonctions.saisirString();
    stdin.echoMode = true;
    return password;
  }

  //retourne un string correspondant au nom de la bdd saisie par l'utilisateur
  static String getDB() {
    String db = "";
    while (db.isEmpty) {
      print("Veuillez saisir le nom de la base de donnée");
      db = MesFonctions.saisirString();
    }
    return db;
  }

  //met a jour les parametre de connexion
  static void getConnexionDB() {
    settingsCo.db = getDB();
    settingsCo.user = getUser();
    settingsCo.password = getPassword();
  }

  //retourne un string contenant le message
  static String afficheCreation() {
    return "\x1B[32mCréation des tables effectué\x1B[0m";
  }
}
