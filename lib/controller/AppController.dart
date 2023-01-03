import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:livraison_app/View/Food.dart';
import 'package:livraison_app/View/OnBoarding_Pages.dart';
import 'package:livraison_app/Widgets/customDialog.dart';
import 'package:livraison_app/Widgets/customWithButtonDialog.dart';

class AppController extends GetxController{
   late PageController controller ;
   int page_index=0 ;
   var connectionType = 0.obs;
   final Connectivity _connectivity = Connectivity();
   late StreamSubscription _streamSubscription;
   final List<OnBoard> pages = [
     OnBoard(image: 'lib/Asset/Images/onBoardingImage1.png', title: "Le temps est précieux , n'est-ce pas?",
         description:
         "Avec notre service rapide , vous n’aurez plus à vous soucier de l’heure de votre repas") ,
     OnBoard(image: 'lib/Asset/Ivar onBoardingImage2.png', title: "Un seul clic et vous avez terminé",
         description:
         "Le reste est sur nous, nous vous apportons vos aliments préférés") ,
     OnBoard(image: 'lib/Asset/Images/onBoardingImage3.png', title: "Nous somme là!",
         description:
         "Avec notre service rapide , vous n’aurez plus à vous soucier de l’heure de votre repas") ,
   ] ;
  @override
  void onInit() {
    controller = PageController(initialPage: 0) ;

    // getConnectivityType();
    //_streamSubscription =
      //  _connectivity.onConnectivityChanged.listen(_updateState);
    super.onInit();
  }
   void onchange (int index ){
     page_index =index ;
     update () ;
   }
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
   void Remove_from_cart(List cart   ,Food food ) {
     print(food.ajouter) ;
     int index = cart.indexOf(food)  != -1 ? cart.indexOf(food) : 0 ;
     cart.removeAt(index) ;


     update() ;
   }

   void Continuer(var ajouter  ,  Food food , List continuer) {

     ajouter.value = ! ajouter.value    ;
     int index = continuer.indexOf(food)  ;
     if(ajouter.value ) {
       continuer.add(food) ;
     } else {
       if (continuer.indexOf(food)  != -1)  continuer.removeAt(index);
     }

   }
   void ListOfFood ( List continuer  ,var  somme ) {
     for (var plat in continuer) {
       somme.value = somme.value + plat.prix * plat.counter.value ;
     }

     update() ;
   }

  static void showDialogButton(String title,String ligne1,String ligne2,String asset)async{
     Get.dialog(
       barrierDismissible:false,
       customWithButtonDialog(
         title:title,
         ligne1: ligne1,
         ligne2: ligne2,
         asset: asset,
       ),
     );
   }

   static void showDialogLogin(ligne1,ligne2)async{
     Get.dialog(
         barrierDismissible:false,
         customDialog(
           title:'S''il vous plaît, attendez',
           ligne1: ligne1,
           ligne2: ligne2,
           asset: 'assets/json/sending.json',),

     );}

  void onClose(){
    controller.dispose;
    super.onClose();
  }

}