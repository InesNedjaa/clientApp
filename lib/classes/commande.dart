import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:livraison_app/classes/plat.dart';

import '../View/Food.dart';

class  Commande{
  String restaurant ;
 var date ;
  RxList<Food> plats ;
 final String etat ;
 final double livraison=500 ;
 String adresse ;
 var message ;

 Commande(
     { this.message ,required this.etat, required this.restaurant, this.date, required this.plats, required this.adresse});
}