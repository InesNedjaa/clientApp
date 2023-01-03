import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:livraison_app/Classes/Plat.dart';
import 'package:livraison_app/View/Food.dart';
import 'package:livraison_app/classes/Category.dart';
import 'package:livraison_app/classes/OpenTime.dart';
import '../View/CartScreen.dart';
import '../View/HomeScreen.dart';
import '../View/MesCommandes.dart';
import '../View/SearchScreen.dart';
import '../View/currentPage.dart';
import '../classes/commande.dart';
import 'CartController.dart';
import 'CartController.dart';
import 'FoodController.dart';

class RestaurantScreen_controller extends GetxController
    with GetTickerProviderStateMixin {
  bool is_loaded = false;
  late TabController tabController;

  List<Widget> tabs(List<Category> cat) {
    List<Widget> tb = [];
    for (Category category in cat)
      (tb.add(AutoSizeText(
        category.nom_cat,
        textAlign: TextAlign.start,
      )));
    return tb;
  }

  void inisialize(int category_length, int selected_item) {
    tabController = TabController(
        length: category_length, vsync: this, initialIndex: selected_item);
  }

  Future loading() async {
    is_loaded = false;
    await Future.delayed(Duration(seconds: 1), () {});
    is_loaded = true;
    update();
  }

  void time_change_detector(OpenTime range, var isOpened) {
    var now = DateTime.now().obs;
    var nextMinute = DateTime(now.value.year, now.value.month, now.value.day,
        now.value.hour, now.value.minute + 1);
    Timer(nextMinute.difference(now.value), () {
      Timer.periodic(Duration(minutes: 1), (timer) {
        is_opened(DateTime.now(), range, isOpened);
        update();
      });
      update();
    });
  }

  void is_opened(DateTime time, OpenTime range, var is_opened) {
    if (time.hour < range.openHour.hour ||
        time.hour > range.closeHour.hour ||
        (time.hour == range.openHour.hour &&
            time.minute < range.openHour.minute) ||
        (time.hour == range.closeHour.hour &&
            time.minute > range.closeHour.minute)) {
      is_opened.value = false;
    } else {
      is_opened.value = true;
      print('//////////////////////////////////////////////////////::::::');
    }
    print(time.minute);
    update();
    print(is_opened);
  }

  void ListOfFood(List continuer, var somme) {
    for (var plat in continuer) {
      somme.value = somme.value + plat.prix * plat.counter.value;
    }

    update();
  }

  void Reinitialize(List<Category> category) {
    for (Category cat in category) {
      for (Food food in cat.plat) {
        food.ajouter.value = false;

      }
    }
  }
 void onPressed (RxList <Food> List_of_food , String name , String adress )

 {

   var somme =0.0.obs ;
   var cart = CartController.commande.plats ;
   cart.addAll(List_of_food) ;
   CartController.commande=Commande(etat: 'En cours', restaurant: name , adresse: adress, plats: cart);

  ListOfFood(CartController.commande.plats , somme) ;
   Main_Page.currentindex=2 ;
   Main_Page.interfaces=[ Home(),SearchScreen() ,  CartScreen( inisial_price: somme.value)  ,MesCommandes() ] ;
   Get.to(()=>Main_Page()) ;

   update() ;

 }
  @override
  void onInit() {
    Get.put(FoodController());
    super.onInit();
    loading();
  }

  @override
  void onClose() {
    tabController.dispose();
    //  FoodController().dispose() ;

    super.onClose();
  }
}
