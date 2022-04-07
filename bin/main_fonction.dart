import 'affichage/affichage_auteur.dart';
import 'affichage/affichage_creer.dart';
import 'affichage/affichage_editeur.dart';
import 'affichage/affichage_principal.dart';
import 'affichage/affichage_produit.dart';
import 'auteur.dart';
import 'bdd.dart';
import 'creer.dart';
import 'editeur.dart';
import 'gestion_auteur.dart';
import 'gestion_creer.dart';
import 'gestion_editeur.dart';
import 'gestion_produit.dart';
import 'produit.dart';

//Chaque méthode correspond à un choix de l'utilisateur
class MainFonction {
  Future<bool> testConnexionBDD() async {
    BDD laBdd = BDD();
    return laBdd.testConnexion();
  }

  Future<bool> checkTable() async {
    BDD laBdd = BDD();
    if ((await laBdd.checkTableManquantes()).isNotEmpty) {
      print(AffichagePrincipal.afficheTableManquantes());
      int choix = AffichagePrincipal.choixMenus(2);
      if (choix == 1) {
        await laBdd.createTables();
        print(AffichagePrincipal.afficheCreation());
        await Future.delayed(Duration(seconds: 1));
        return true;
      } else {
        return false;
      }
    }
    return true;
  }

  int choixDeux() {
    print(AffichagePrincipal.afficheActions());
    return AffichagePrincipal.choixMenus(5);
  }

  Future<List<int>> getListIdProduit() async {
    GestionProduit gProduit = GestionProduit();
    return await gProduit.getAllId();
  }

  Future<List<int>> getListIdAuteur() async {
    GestionAuteur gAuteur = GestionAuteur();
    return await gAuteur.getAllId();
  }

  Future<List<int>> getListIdEditeur() async {
    GestionEditeur gEditeur = GestionEditeur();
    return await gEditeur.getAllId();
  }

  Future<void> choix1_1options2_1(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    print(AffichageProduit.afficheListeProduit(
        gProduit.triPrixCroissant(lesProduits)));
    int choix = AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix1_1options2_2(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    print(AffichageProduit.afficheListeProduit(
        gProduit.triPrixDecroissant(lesProduits)));
    int choix = AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix1_1options2_3(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    print(AffichageProduit.afficheListeProduit(
        gProduit.triAnneeCroissant(lesProduits)));
    int choix = AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix1_1options2_4(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    print(AffichageProduit.afficheListeProduit(
        gProduit.triAnneeDecroissant(lesProduits)));
    int choix = AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix1_1options2_5(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    print(AffichageProduit.afficheListeProduit(lesProduits));
    int choix = AffichagePrincipal.choixMenus(1);
  }

  void choix1_1options2_6(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    return await choix1_1options1(gProduit, lesProduits);
  }

  Future<void> choix1_1options2(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    print(AffichageProduit.afficheAffiche3());
    int choix = AffichagePrincipal.choixMenus(6);
    if (choix == 1) {
      await choix1_1options2_1(gProduit, lesProduits);
    } else if (choix == 2) {
      await choix1_1options2_2(gProduit, lesProduits);
    } else if (choix == 3) {
      await choix1_1options2_3(gProduit, lesProduits);
    } else if (choix == 4) {
      await choix1_1options2_4(gProduit, lesProduits);
    } else if (choix == 5) {
      await choix1_1options2_5(gProduit, lesProduits);
    } else {
      choix1_1options2_6(gProduit, lesProduits);
    }
  }

  Future<void> choix1_1options1_1(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    lesProduits =
        gProduit.triPrixMax(lesProduits, AffichageProduit.getPrixMaxProduit());
    return await choix1_1options2(gProduit, lesProduits);
  }

  Future<void> choix1_1options1_2(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    lesProduits =
        gProduit.triPrixMin(lesProduits, AffichageProduit.getPrixMinProduit());
    return await choix1_1options2(gProduit, lesProduits);
  }

  Future<void> choix1_1options1_3(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    lesProduits = gProduit.triPrixMinMax(
        lesProduits,
        AffichageProduit.getPrixMinProduit(),
        AffichageProduit.getPrixMaxProduit());
    return await choix1_1options2(gProduit, lesProduits);
  }

  Future<void> choix1_1options1_4(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    lesProduits = gProduit.triAnneeMax(
        lesProduits, AffichageProduit.getAnneeParuptionMaxProduit());
    return await choix1_1options2(gProduit, lesProduits);
  }

  Future<void> choix1_1options1_5(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    lesProduits = gProduit.triAnneeMin(
        lesProduits, AffichageProduit.getAnneeParuptionMinProduit());
    return await choix1_1options2(gProduit, lesProduits);
  }

  Future<void> choix1_1options1_6(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    lesProduits = gProduit.triAnneeMinMax(
        lesProduits,
        AffichageProduit.getAnneeParuptionMinProduit(),
        AffichageProduit.getAnneeParuptionMaxProduit());
    return await choix1_1options2(gProduit, lesProduits);
  }

  Future<void> choix1_1options1_7(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    lesProduits = gProduit.triProduitParType(
        lesProduits, AffichageProduit.getTypeProduit());
    return await choix1_1options2(gProduit, lesProduits);
  }

  Future<void> choix1_1options1_8(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    return await choix1_1options2(gProduit, lesProduits);
  }

  Future<void> choix1_1options1_9(GestionProduit gProduit) async {
    return await choix1_1(gProduit);
  }

  Future<void> choix1_1options1(
      GestionProduit gProduit, List<Produit> lesProduits) async {
    print(AffichageProduit.afficheAffiche2());
    int choix = AffichagePrincipal.choixMenus(9);
    if (choix == 1) {
      await choix1_1options1_1(gProduit, lesProduits);
    } else if (choix == 2) {
      await choix1_1options1_2(gProduit, lesProduits);
    } else if (choix == 3) {
      await choix1_1options1_3(gProduit, lesProduits);
    } else if (choix == 4) {
      await choix1_1options1_4(gProduit, lesProduits);
    } else if (choix == 5) {
      await choix1_1options1_5(gProduit, lesProduits);
    } else if (choix == 6) {
      await choix1_1options1_6(gProduit, lesProduits);
    } else if (choix == 7) {
      await choix1_1options1_7(gProduit, lesProduits);
    } else if (choix == 8) {
      await choix1_1options1_8(gProduit, lesProduits);
    } else {
      await choix1_1options1_9(gProduit);
    }
  }

  Future<void> choix1_1_1(GestionProduit gProduit) async {
    List<Produit> lesProduits = await gProduit.getProduitParId(
        AffichageProduit.afficheProduitParId(await getListIdProduit()));
    return choix1_1options1(gProduit, lesProduits);
  }

  Future<void> choix1_1_2(GestionProduit gProduit) async {
    GestionCreer gCreer = GestionCreer();
    List<Produit> lesProduits = await gProduit.getProduitParId(await gCreer
        .getIdProduitParIdAuteur(AffichageProduit.afficheProduitParIdAuteur(
            await getListIdAuteur())));
    return choix1_1options1(gProduit, lesProduits);
  }

  Future<void> choix1_1_3(GestionProduit gProduit) async {
    List<Produit> lesProduits = await gProduit.getProduitParIdEditeur(
        AffichageProduit.afficheProduitParIdEditeur(await getListIdEditeur()));
    return choix1_1options1(gProduit, lesProduits);
  }

  Future<void> choix1_1_4(GestionProduit gProduit) async {
    List<Produit> lesProduits = await gProduit
        .getProduitParNom(AffichageProduit.afficheProduitParNom());
    return choix1_1options1(gProduit, lesProduits);
  }

  Future<void> choix1_1_5(GestionProduit gProduit) async {
    GestionAuteur gAuteur = GestionAuteur();
    GestionCreer gCreer = GestionCreer();
    List<Produit> lesProduits = await gProduit.getProduitParId(
        await gCreer.getIdProduitParIdAuteur(await gAuteur
            .getIdParNomAuteur(AffichageAuteur.afficheAuteurParNom())));
    return choix1_1options1(gProduit, lesProduits);
  }

  Future<void> choix1_1_6(GestionProduit gProduit) async {
    List<String> lesValeurs = AffichageAuteur.afficheAuteurParNomPrenom();
    GestionAuteur gAuteur = GestionAuteur();
    GestionCreer gCreer = GestionCreer();
    List<Produit> lesProduits = await gProduit.getProduitParId(
        await gCreer.getIdProduitParIdAuteur(await gAuteur
            .getIdParNomPrenomAuteur(lesValeurs[0], lesValeurs[1])));
    return choix1_1options1(gProduit, lesProduits);
  }

  Future<void> choix1_1_7(GestionProduit gProduit) async {
    GestionEditeur gEditeur = GestionEditeur();
    List<Produit> lesProduits = await gProduit.getProduitParIdEditeur(
        await gEditeur
            .getIdParNomEditeur(AffichageEditeur.afficheEditeurParNom()));
    return choix1_1options1(gProduit, lesProduits);
  }

  Future<void> choix1_1_8(GestionProduit gProduit) async {
    await gProduit.initProduit();
    List<Produit> lesProduits = gProduit.getLesProduits();
    return choix1_1options1(gProduit, lesProduits);
  }

  void choix1_1_9() async {
    return choix1();
  }

  Future<void> choix1_1(GestionProduit gProduit) async {
    print(AffichageProduit.afficheAffiche());
    int choix = AffichagePrincipal.choixMenus(9);
    if (choix == 1) {
      await choix1_1_1(gProduit);
    } else if (choix == 2) {
      await choix1_1_2(gProduit);
    } else if (choix == 3) {
      await choix1_1_3(gProduit);
    } else if (choix == 4) {
      await choix1_1_4(gProduit);
    } else if (choix == 5) {
      await choix1_1_5(gProduit);
    } else if (choix == 6) {
      await choix1_1_6(gProduit);
    } else if (choix == 7) {
      await choix1_1_7(gProduit);
    } else if (choix == 8) {
      await choix1_1_8(gProduit);
    } else {
      choix1_1_9();
    }
  }

  Future<void> choix1_2_1(GestionProduit gProduit) async {
    List<String> lesValeurs =
        AffichageProduit.modifieNomProduit(await getListIdProduit());
    if (!AffichagePrincipal.confirmationModification()) {
      return;
    }
    print(AffichagePrincipal.afficheModification(await gProduit
        .modifieNomProduit(int.parse(lesValeurs[0]), lesValeurs[1])));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix1_2_2(GestionProduit gProduit) async {
    List<String> lesValeurs =
        AffichageProduit.modifieAnneeProduit(await getListIdProduit());
    if (!AffichagePrincipal.confirmationModification()) {
      return;
    }
    print(AffichagePrincipal.afficheModification(
        await gProduit.modifieAnneeProduit(
            int.parse(lesValeurs[0]), int.parse(lesValeurs[1]))));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix1_2_3(GestionProduit gProduit) async {
    List<String> lesValeurs =
        AffichageProduit.modifiePrixProduit(await getListIdProduit());
    if (!AffichagePrincipal.confirmationModification()) {
      return;
    }
    print(AffichagePrincipal.afficheModification(
        await gProduit.modifiePrixProduit(
            int.parse(lesValeurs[0]), double.parse(lesValeurs[1]))));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix1_2_4(GestionProduit gProduit) async {
    List<String> lesValeurs =
        AffichageProduit.modifieQuantiteProduit(await getListIdProduit());
    if (!AffichagePrincipal.confirmationModification()) {
      return;
    }
    print(AffichagePrincipal.afficheModification(
        await gProduit.modifieQuantiteProduit(
            int.parse(lesValeurs[0]), int.parse(lesValeurs[1]))));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix1_2_5(GestionProduit gProduit) async {
    List<String> lesValeurs =
        AffichageProduit.modifieTypeProduit(await getListIdProduit());
    if (!AffichagePrincipal.confirmationModification()) {
      return;
    }
    print(AffichagePrincipal.afficheModification(await gProduit
        .modifieTypeProduit(int.parse(lesValeurs[0]), lesValeurs[1])));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix1_2_6(GestionProduit gProduit) async {
    List<String> lesValeurs = AffichageProduit.modifieIdEditeur(
        await getListIdProduit(), await getListIdEditeur());
    if (!AffichagePrincipal.confirmationModification()) {
      return;
    }
    print(AffichagePrincipal.afficheModification(await gProduit
        .modifieIdEditeur(int.parse(lesValeurs[0]), int.parse(lesValeurs[1]))));
    await Future.delayed(Duration(seconds: 1));
  }

  void choix1_2_7() async {
    return choix1();
  }

  Future<void> choix1_2(GestionProduit gProduit) async {
    print(AffichageProduit.afficheModifie());
    int choix3 = AffichagePrincipal.choixMenus(7);
    if (choix3 == 1) {
      await choix1_2_1(gProduit);
    } else if (choix3 == 2) {
      await choix1_2_2(gProduit);
    } else if (choix3 == 3) {
      await choix1_2_3(gProduit);
    } else if (choix3 == 4) {
      await choix1_2_4(gProduit);
    } else if (choix3 == 5) {
      await choix1_2_5(gProduit);
    } else if (choix3 == 6) {
      await choix1_2_6(gProduit);
    } else if (choix3 == 7) {
      choix1_2_7();
    }
  }

  Future<void> choix1_3(GestionProduit gProduit) async {
    if ((await getListIdEditeur()).isNotEmpty) {
      List<String> lesValeurs =
          AffichageProduit.ajouteProduit(await getListIdEditeur());
      if (!AffichagePrincipal.confirmationAjout()) {
        return;
      }
      print(AffichagePrincipal.afficheAjoutProduit(await gProduit.ajouteProduit(
          Produit(
              0,
              lesValeurs[0],
              int.parse(lesValeurs[1]),
              double.parse(lesValeurs[2]),
              int.parse(lesValeurs[3]),
              lesValeurs[4],
              int.parse(lesValeurs[5])))));
    } else {
      print(
          "\x1B[31mImpossible d'ajouter un produit car il n'y a pas d'éditeur existant\x1B[0m");
      await Future.delayed(Duration(seconds: 1));
    }
  }

  Future<void> choix1_4(GestionProduit gProduit) async {
    int idProduit = AffichageAuteur.getIdAuteur(await getListIdAuteur());
    if (!AffichagePrincipal.confirmationSuppression()) {
      return;
    }
    print(AffichagePrincipal.afficheSupprime(
        await gProduit.supprimeProduit(idProduit)));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix1() async {
    int choix2 = choixDeux();
    GestionProduit gProduit = GestionProduit();
    if (choix2 == 1) {
      await choix1_1(gProduit);
    } else if (choix2 == 2) {
      await choix1_2(gProduit);
    } else if (choix2 == 3) {
      await choix1_3(gProduit);
    } else if (choix2 == 4) {
      await choix1_4(gProduit);
    }
  }

  Future<void> choix2_1_1(GestionCreer gCreer) async {
    List<int> lesValeurs =
        AffichageCreer.afficheCreerParIdAuteur(await getListIdAuteur());
    print(AffichageCreer.afficheListeCreer(
        await gCreer.getCreerParIdAuteur(lesValeurs)));
    AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix2_1_2(GestionCreer gCreer) async {
    List<int> lesValeurs =
        AffichageCreer.afficheCreerParIdProduit(await getListIdProduit());
    print(AffichageCreer.afficheListeCreer(
        await gCreer.getCreerParIdProduit(lesValeurs)));
    AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix2_1_3(GestionCreer gCreer) async {
    GestionAuteur gAuteur = GestionAuteur();
    String laValeur = AffichageCreer.afficheCreerParNomAuteur();
    print(AffichageCreer.afficheListeCreer(await gCreer
        .getCreerParIdAuteur(await gAuteur.getIdParNomAuteur(laValeur))));
    AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix2_1_4(GestionCreer gCreer) async {
    GestionProduit gProduit = GestionProduit();
    String laValeur = AffichageCreer.afficheCreerParNomProduit();
    print(AffichageCreer.afficheListeCreer(await gCreer
        .getCreerParIdProduit(await gProduit.getIdParNom(laValeur))));
    AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix2_1_5(GestionCreer gCreer) async {
    await gCreer.initCreer();
    print(AffichageCreer.afficheListeCreer(await gCreer.getLesCreer()));
    AffichagePrincipal.choixMenus(1);
  }

  void choix2_1_6() async {
    return choix2();
  }

  Future<void> choix2_1(GestionCreer gCreer) async {
    print(AffichageCreer.afficheAffiche());
    int choix = AffichagePrincipal.choixMenus(6);
    if (choix == 1) {
      await choix2_1_1(gCreer);
    } else if (choix == 2) {
      await choix2_1_2(gCreer);
    } else if (choix == 3) {
      await choix2_1_3(gCreer);
    } else if (choix == 4) {
      await choix2_1_4(gCreer);
    } else if (choix == 5) {
      await choix2_1_5(gCreer);
    } else {
      return choix2_1_6();
    }
  }

  Future<void> choix2_2_1(GestionCreer gCreer) async {
    List<int> lesValeurs = AffichageCreer.modifieAuteur(
        await getListIdAuteur(), await getListIdProduit());
    if (!AffichagePrincipal.confirmationModification()) {
      return;
    }
    print(AffichagePrincipal.afficheModification(await gCreer
        .modifieAuteurCreer(lesValeurs[0], lesValeurs[1], lesValeurs[2])));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix2_2_2(GestionCreer gCreer) async {
    List<int> lesValeurs = AffichageCreer.modifieProduit(
        await getListIdAuteur(), await getListIdProduit());
    if (!AffichagePrincipal.confirmationModification()) {
      return;
    }
    print(AffichagePrincipal.afficheModification(await gCreer
        .modifieProduitCreer(lesValeurs[0], lesValeurs[1], lesValeurs[2])));
    await Future.delayed(Duration(seconds: 1));
  }

  void choix2_2_3() async {
    return choix2();
  }

  Future<void> choix2_2(GestionCreer gCreer) async {
    print(AffichageCreer.afficheModifie());
    int choix3 = AffichagePrincipal.choixMenus(3);
    if (choix3 == 1) {
      await choix2_2_1(gCreer);
    } else if (choix3 == 2) {
      await choix2_2_2(gCreer);
    } else {
      choix2_2_3();
    }
  }

  Future<void> choix2_3(GestionCreer gCreer) async {
    if ((await getListIdAuteur()).isNotEmpty &&
        (await getListIdProduit()).isNotEmpty) {
      List<String> lesValeurs = AffichageCreer.ajouteCreer(
          await getListIdAuteur(), await getListIdProduit());
      if (!AffichagePrincipal.confirmationAjout()) {
        return;
      }
      print(AffichagePrincipal.afficheAjoutProduit(await gCreer.ajouteCreer(
          Creer(int.parse(lesValeurs[0]), int.parse(lesValeurs[1])))));
      await Future.delayed(Duration(seconds: 1));
    } else {
      if ((await getListIdAuteur()).isEmpty) {
        print(
            "\x1B[31mImpossible d'ajouter une valeur dans Creer car il n'y a pas d'auteur existant\x1B[0m");
      }
      if ((await getListIdProduit()).isEmpty) {
        print(
            "\x1B[31mImpossible d'ajouter une valeur dans Creer car il n'y a pas de produit existant\x1B[0m");
      }
      await Future.delayed(Duration(seconds: 2));
    }
  }

  Future<void> choix2_4(GestionCreer gCreer) async {
    print(await getListIdAuteur());
    int idAuteur = AffichageAuteur.getIdAuteur(await getListIdAuteur());
    int idProduit = AffichageAuteur.getIdAuteur(await getListIdAuteur());
    if (!AffichagePrincipal.confirmationSuppression()) {
      return;
    }
    print(AffichagePrincipal.afficheSupprime(
        await gCreer.supprimeCreer(idAuteur, idProduit)));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix2() async {
    int choix2 = choixDeux();
    GestionCreer gCreer = GestionCreer();
    if (choix2 == 1) {
      await choix2_1(gCreer);
    } else if (choix2 == 2) {
      await choix2_2(gCreer);
    } else if (choix2 == 3) {
      await choix2_3(gCreer);
    } else if (choix2 == 4) {
      await choix2_4(gCreer);
    }
  }

  Future<void> choix3_1_1(GestionAuteur gAuteur) async {
    List<int> lesValeurs =
        AffichageAuteur.afficheAuteurParId(await getListIdAuteur());
    print(AffichageAuteur.afficheListeAuteur(
        await gAuteur.getAuteurParIdAuteur(lesValeurs)));
    AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix3_1_2(GestionAuteur gAuteur) async {
    GestionCreer gCreer = GestionCreer();
    List<int> lesValeurs =
        AffichageAuteur.afficheAuteurParIdProduit(await getListIdProduit());
    print(AffichageAuteur.afficheListeAuteur(await gAuteur.getAuteurParIdAuteur(
        await gCreer.getIdAuteurParIdProduit(lesValeurs))));
    AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix3_1_3(GestionAuteur gAuteur) async {
    String laValeur = AffichageAuteur.afficheAuteurParNom();
    print(AffichageAuteur.afficheListeAuteur(
        await gAuteur.getAuteurParNomAuteur(laValeur)));
    AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix3_1_4(GestionAuteur gAuteur) async {
    List<String> lesValeurs = AffichageAuteur.afficheAuteurParNomPrenom();
    print(AffichageAuteur.afficheListeAuteur(await gAuteur
        .getAuteurParNomPrenomAuteur(lesValeurs[0], lesValeurs[1])));
    AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix3_1_5(GestionAuteur gAuteur) async {
    GestionProduit gProduit = GestionProduit();
    GestionCreer gCreer = GestionCreer();
    String laValeur = AffichageAuteur.afficheAuteurParNomProduit();
    print(AffichageAuteur.afficheListeAuteur(await gAuteur.getAuteurParIdAuteur(
        await gCreer
            .getIdAuteurParIdProduit(await gProduit.getIdParNom(laValeur)))));
    AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix3_1_6(GestionAuteur gAuteur) async {
    await gAuteur.initAuteur();
    print(AffichageAuteur.afficheListeAuteur(gAuteur.getLesAuteurs()));
    AffichagePrincipal.choixMenus(1);
  }

  void choix3_1_7() async {
    return choix3();
  }

  Future<void> choix3_1(GestionAuteur gAuteur) async {
    print(AffichageAuteur.afficheAffiche());
    int choix3 = AffichagePrincipal.choixMenus(7);
    if (choix3 == 1) {
      await choix3_1_1(gAuteur);
    } else if (choix3 == 2) {
      await choix3_1_2(gAuteur);
    } else if (choix3 == 3) {
      await choix3_1_3(gAuteur);
    } else if (choix3 == 4) {
      await choix3_1_4(gAuteur);
    } else if (choix3 == 5) {
      await choix3_1_5(gAuteur);
    } else if (choix3 == 6) {
      await choix3_1_6(gAuteur);
    } else {
      return choix3_1_7();
    }
  }

  Future<void> choix3_2_1(GestionAuteur gAuteur) async {
    List<String> lesValeurs =
        AffichageAuteur.modifieNomAuteur(await getListIdAuteur());
    if (!AffichagePrincipal.confirmationModification()) {
      return;
    }
    print(AffichagePrincipal.afficheModification(await gAuteur.modifieNomAuteur(
        int.parse(lesValeurs[0]), lesValeurs[1])));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix3_2_2(GestionAuteur gAuteur) async {
    List<String> lesValeurs =
        AffichageAuteur.modifiePrenomAuteur(await getListIdAuteur());
    if (!AffichagePrincipal.confirmationModification()) {
      return;
    }
    print(AffichagePrincipal.afficheModification(await gAuteur
        .modifiePrenomAuteur(int.parse(lesValeurs[0]), lesValeurs[1])));
    await Future.delayed(Duration(seconds: 1));
  }

  void choix3_2_3() async {
    return choix3();
  }

  Future<void> choix3_2(GestionAuteur gAuteur) async {
    print(AffichageAuteur.afficheModifie());
    int choix3 = AffichagePrincipal.choixMenus(3);
    if (choix3 == 1) {
      await choix3_2_1(gAuteur);
    } else if (choix3 == 2) {
      await choix3_2_2(gAuteur);
    } else {
      return choix3_2_3();
    }
  }

  Future<void> choix3_3(GestionAuteur gAuteur) async {
    List<String> lesValeurs = AffichageAuteur.ajouteAuteur();
    if (!AffichagePrincipal.confirmationAjout()) {
      return;
    }
    print(AffichagePrincipal.afficheAjout(
        await gAuteur.ajouteAuteur(Auteur(0, lesValeurs[0], lesValeurs[1]))));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix3_4(GestionAuteur gAuteur) async {
    int idAuteur = AffichageAuteur.getIdAuteur(await getListIdAuteur());
    if (!AffichagePrincipal.confirmationSuppression()) {
      return;
    }
    print(AffichagePrincipal.afficheSupprime(
        await gAuteur.supprimeAuteur(idAuteur)));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix3() async {
    int choix2 = choixDeux();
    GestionAuteur gAuteur = GestionAuteur();
    if (choix2 == 1) {
      await choix3_1(gAuteur);
    } else if (choix2 == 2) {
      await choix3_2(gAuteur);
    } else if (choix2 == 3) {
      await choix3_3(gAuteur);
    } else if (choix2 == 4) {
      await choix3_4(gAuteur);
    }
  }

  Future<void> choix4_1_1(GestionEditeur gEditeur) async {
    List<int> lesValeurs =
        AffichageEditeur.afficheEditeurParId(await getListIdEditeur());
    print(AffichageEditeur.afficheListeEditeur(
        await gEditeur.getEditeurParIdEditeur(lesValeurs)));
    AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix4_1_2(GestionEditeur gEditeur) async {
    GestionProduit gProduit = GestionProduit();
    int laValeur =
        AffichageEditeur.afficheEditeurParIdProduit(await getListIdProduit());
    print(AffichageEditeur.afficheListeEditeur(await gEditeur
        .getEditeurParIdEditeur(await gProduit.getIdEditeurParId(laValeur))));
    AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix4_1_3(GestionEditeur gEditeur) async {
    String laValeur = AffichageEditeur.afficheEditeurParNom();
    print(AffichageEditeur.afficheListeEditeur(
        await gEditeur.getEditeurParNomEditeur(laValeur)));
    AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix4_1_4(GestionEditeur gEditeur) async {
    GestionProduit gProduit = GestionProduit();
    String laValeur = AffichageEditeur.afficheEditeurParNomProduit();
    print(AffichageEditeur.afficheListeEditeur(await gEditeur
        .getEditeurParIdEditeur(await gProduit.getIdEditeurParNom(laValeur))));
    AffichagePrincipal.choixMenus(1);
  }

  Future<void> choix4_1_5(GestionEditeur gEditeur) async {
    await gEditeur.initEditeur();
    print(AffichageEditeur.afficheListeEditeur(gEditeur.getLesEditeurs()));
    AffichagePrincipal.choixMenus(1);
  }

  void choix4_1_6() async {
    return choix4();
  }

  Future<void> choix4_1(GestionEditeur gEditeur) async {
    print(AffichageEditeur.afficheAffiche());
    int choix = AffichagePrincipal.choixMenus(6);
    if (choix == 1) {
      await choix4_1_1(gEditeur);
    } else if (choix == 2) {
      await choix4_1_2(gEditeur);
    } else if (choix == 3) {
      await choix4_1_3(gEditeur);
    } else if (choix == 4) {
      await choix4_1_4(gEditeur);
    } else if (choix == 5) {
      await choix4_1_5(gEditeur);
    } else {
      choix4_1_6();
    }
  }

  Future<void> choix4_2_1(GestionEditeur gEditeur) async {
    List<String> lesValeurs =
        AffichageEditeur.modifieNomEditeur(await getListIdEditeur());
    if (!AffichagePrincipal.confirmationModification()) {
      return;
    }
    print(AffichagePrincipal.afficheModification(await gEditeur
        .modifieNomEditeur(int.parse(lesValeurs[0]), lesValeurs[1])));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix4_2_2(GestionEditeur gEditeur) async {
    List<String> lesValeurs =
        AffichageEditeur.modifieVilleEditeur(await getListIdEditeur());
    if (!AffichagePrincipal.confirmationModification()) {
      return;
    }
    print(AffichagePrincipal.afficheModification(await gEditeur
        .modifieVilleEditeur(int.parse(lesValeurs[0]), lesValeurs[1])));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix4_2_3(GestionEditeur gEditeur) async {
    List<String> lesValeurs =
        AffichageEditeur.modifieCpEditeur(await getListIdEditeur());
    if (!AffichagePrincipal.confirmationModification()) {
      return;
    }
    print(AffichagePrincipal.afficheModification(await gEditeur
        .modifieCPEditeur(int.parse(lesValeurs[0]), int.parse(lesValeurs[1]))));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix4_2_4(GestionEditeur gEditeur) async {
    List<String> lesValeurs =
        AffichageEditeur.modifieAdresseEditeur(await getListIdEditeur());
    if (!AffichagePrincipal.confirmationModification()) {
      return;
    }
    print(AffichagePrincipal.afficheModification(await gEditeur
        .modifieAdresseEditeur(int.parse(lesValeurs[0]), lesValeurs[1])));
    await Future.delayed(Duration(seconds: 1));
  }

  void choix4_2_5() async {
    return choix4();
  }

  Future<void> choix4_2(GestionEditeur gEditeur) async {
    print(AffichageEditeur.afficheModifie());
    int choix3 = AffichagePrincipal.choixMenus(5);
    if (choix3 == 1) {
      await choix4_2_1(gEditeur);
    } else if (choix3 == 2) {
      await choix4_2_2(gEditeur);
    } else if (choix3 == 3) {
      await choix4_2_3(gEditeur);
    } else if (choix3 == 4) {
      await choix4_2_4(gEditeur);
    } else {
      choix4_2_5();
    }
  }

  Future<void> choix4_3(GestionEditeur gEditeur) async {
    List<String> lesValeurs = AffichageEditeur.ajouteEditeur();
    if (!AffichagePrincipal.confirmationAjout()) {
      return;
    }
    print(AffichagePrincipal.afficheAjout(await gEditeur.ajouteEditeur(Editeur(
        0,
        lesValeurs[0],
        lesValeurs[1],
        int.parse(lesValeurs[2]),
        lesValeurs[3]))));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix4_4(GestionEditeur gEditeur) async {
    int idEditeur = AffichageEditeur.getIdEditeur(await getListIdEditeur());
    if (!AffichagePrincipal.confirmationSuppression()) {
      return;
    }
    print(AffichagePrincipal.afficheSupprime(
        await gEditeur.supprimeEditeur(idEditeur)));
    await Future.delayed(Duration(seconds: 1));
  }

  Future<void> choix4() async {
    int choix2 = choixDeux();
    GestionEditeur gEditeur = GestionEditeur();
    if (choix2 == 1) {
      await choix4_1(gEditeur);
    } else if (choix2 == 2) {
      await choix4_2(gEditeur);
    } else if (choix2 == 3) {
      await choix4_3(gEditeur);
    } else if (choix2 == 4) {
      await choix4_4(gEditeur);
    }
  }

  Future<void> choix6() async {
    if (AffichagePrincipal.confirmationSuppressionTables()) {
      BDD laBDD = BDD();
      await laBDD.dropAllTable();
    }
  }
}
