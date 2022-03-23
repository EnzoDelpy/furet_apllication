import 'affichage/affichage_principal.dart';
import 'main_fonction.dart';

main(List<String> args) async {
  MainFonction mainFonction = MainFonction();
  int choix = 0;
  while (choix != 5 && await mainFonction.testConnexionBDD()) {
    print(AffichagePrincipal.afficheMenu());
    choix = AffichagePrincipal.choixMenus(5);
    if (choix == 1) {
      await mainFonction.choix1();
    } else if (choix == 2) {
      await mainFonction.choix2();
    } else if (choix == 3) {
      await mainFonction.choix3();
    } else if (choix == 4) {
      await mainFonction.choix4();
    }
  }
  if (choix != 5) {
    print(AffichagePrincipal.connexionImpossible());
  }
}
