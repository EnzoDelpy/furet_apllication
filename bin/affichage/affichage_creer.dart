import 'dart:io';

import '../creer.dart';
import 'affichage_auteur.dart';
import 'affichage_principal.dart';
import 'affichage_produit.dart';
import 'fonctions.dart';

class AffichageCreer {
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
        "|   4. En fonction du nom d'un Produit                                  |\n" +
        "|   5. Afficher tout                                                    |\n" +
        "|   6. Retour                                                           |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  static List<String> ajouteCreer(List<int> idAuteur, List<int> idProduit) {
    List<String> lesAttributs = [];
    lesAttributs.add(AffichageAuteur.getIdAuteur(idAuteur).toString());
    lesAttributs.add(AffichageProduit.getIdProduit(idProduit).toString());
    return lesAttributs;
  }

  static List<int> supprimeAuteur(List<int> idAuteur, List<int> idProduit) {
    return [
      AffichageAuteur.getIdAuteur(idAuteur),
      AffichageProduit.getIdProduit(idProduit)
    ];
  }

  static List<int> modifieAuteur(List<int> idAuteur, List<int> idProduit) {
    return [
      AffichageAuteur.getIdAuteur(idAuteur),
      AffichageProduit.getIdProduit(idProduit),
      AffichageAuteur.getNouveauIdAuteur(idAuteur)
    ];
  }

  static List<int> modifieProduit(List<int> idAuteur, List<int> idProduit) {
    return [
      AffichageAuteur.getIdAuteur(idAuteur),
      AffichageProduit.getIdProduit(idProduit),
      AffichageProduit.getNouveauIdProduit(idProduit)
    ];
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
        "|   1. Id de l'auteur                                                   |\n" +
        "|   2. Id du produit                                                    |\n" +
        "|   3. Retour                                                           |\n" +
        "|                                                                       |\n" +
        "=========================================================================\n";
    return affichage;
  }

  static List<int> afficheCreerParIdAuteur(List<int> idAuteur) {
    return [AffichageAuteur.getIdAuteur(idAuteur)];
  }

  static List<int> afficheCreerParIdProduit(List<int> idProduit) {
    return [AffichageProduit.getIdProduit(idProduit)];
  }

  static String afficheCreerParNomProduit() {
    return AffichageProduit.getNomProduit();
  }

  static String afficheCreerParNomAuteur() {
    return AffichageAuteur.getNomAuteur();
  }

  static String afficheListeCreer(List<Creer> lesAuteurs) {
    String affichage =
        "\x1B[2J\x1B[0;0H\x1B[31mAucune donnée trouvé\x1B[0m\n\n1. Revenir au menu principal";
    if (lesAuteurs.isNotEmpty) {
      affichage = "\x1B[2J\x1B[0;0H\n";
      for (Creer elt in lesAuteurs) {
        affichage +=
            "===========================================================================================================\nId de l'auteur            : " +
                elt.getIdAuteur().toString() +
                "\nId du produit            : " +
                elt.getIdProduit().toString() +
                "\n";
      }
      affichage +=
          "===========================================================================================================\n\n1. Revenir au menu Principal";
    }
    return affichage;
  }
}
