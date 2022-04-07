import 'affichage/affichage_principal.dart';
import 'main_fonction.dart';

main(List<String> args) async {
  MainFonction mainFonction = MainFonction();
  int choix = 0;
  print(AffichagePrincipal.afficheConnexion());
  AffichagePrincipal.getConnexionDB();
  while (choix != 5 &&
      await mainFonction.testConnexionBDD() &&
      await mainFonction.checkTable()) {
    print(AffichagePrincipal.afficheMenu());
    choix = AffichagePrincipal.choixMenus(6);
    if (choix == 1) {
      await mainFonction.choix1();
    } else if (choix == 2) {
      await mainFonction.choix2();
    } else if (choix == 3) {
      await mainFonction.choix3();
    } else if (choix == 4) {
      await mainFonction.choix4();
    } else if (choix == 6) {
      await mainFonction.choix6();
      choix = 5;
    }
  }
  if (!await mainFonction.testConnexionBDD()) {
    print(AffichagePrincipal.connexionImpossible());
  }
}
