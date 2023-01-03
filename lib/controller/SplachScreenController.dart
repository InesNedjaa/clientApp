import 'dart:async';
import 'package:get/get.dart';
import 'package:livraison_app/view/LoginScreen.dart';


class SplashScreenController extends GetxController{
  bool userLogged=false;
@override
  void onInit() {
    super.onInit();
    Timer(
        Duration(milliseconds:6000),
        ()=>Get.off(LoginScreen()));

  }
}