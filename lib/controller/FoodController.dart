import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:livraison_app/Controller/CartController.dart';

import 'package:livraison_app/View/Food.dart';


class FoodController extends GetxController {

  void Continuer(List continuer , var nom_restaurant , Food food , var ajouter) {
  if (
  (CartController.commande.restaurant==nom_restaurant && CartController.commande.plats.isNotEmpty)
      || CartController.commande.plats.isEmpty ){


    ajouter.value = ! ajouter.value    ;
    int index = continuer.indexOf(food)  ;
    if(ajouter.value ) {
      continuer.add(food) ;
    } else {
      if (continuer.indexOf(food)  != -1)  continuer.removeAt(index);
      CartController.commande.plats.indexOf(food) != -1 ? CartController.commande.plats.remove(food) :null ;
    }
  }
  }

}