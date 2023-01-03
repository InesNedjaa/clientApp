import 'dart:ui';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'package:livraison_app/Classes/Plat.dart';
import 'package:livraison_app/View/Food.dart';

import '../classes/commande.dart';

class CartController extends GetxController {
  static   Commande commande= Commande(etat: '', restaurant: '', plats: <Food>[].obs, adresse: '') ;

  void increment(var total , var counter , double prix , var cout_total) {


    total.value < 30 ? (){ counter++ ; cout_total.value = (cout_total.value)+  prix ; total.value ++ ; }() : counter ;
    update() ;
  }
  void decrement (var total ,var counter, double prix , var cout_total){
    counter.value >1 ? (){ counter-- ; cout_total.value = (cout_total.value)-  prix ; total.value -- ; } (): counter ;
    update();
  }

  void Delete ( Food food , var cout_total ){
    Get.snackbar(
        'Supprimer', 'Cet élément a été supprimé' ,
        duration: Duration(seconds: 1) ,
        snackPosition: SnackPosition.BOTTOM ,
        backgroundColor: Color(0xffE4E4E4)
    ) ;
    cout_total.value = cout_total.value - food.prix * food.counter.value ;
    print(food.counter) ;
    update() ;

  }
  void Remove_from_cart(RxList<Food> cart   ,Food food ) {
    print(food.ajouter) ;
    int index = cart.indexOf(food)  != -1 ? cart.indexOf(food) : 0 ;
    cart.removeAt(index) ;


    update() ;
  }
  void cart_List( RxList<Food> cart , RxList<Plat> cartList) {
    for(Food plat in cart) {
      cartList.add(Plat( plat.name, plat.prix, plat.description, plat.counter.value)) ;
    }
    update() ;
  }
}