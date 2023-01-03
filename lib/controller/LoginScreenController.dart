
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:livraison_app/classes/user.dart';

class LoginScreenController extends GetxController {
  bool hasInternet=false;
  bool codeIsComing=true;
  final phoneNumber= new TextEditingController();
  final nom= new TextEditingController();
  bool submit1=false;
  bool submit2=false;
  final Uri _number = Uri.parse('tel:+213556000010');
  static late User user;


  @override
  void onInit() {
    super.onInit();
  }
  void onClose() {
    phoneNumber.dispose();
    nom.dispose();
    super.onClose();
  }
  void onSubmitLogin() {
    submit1=phoneNumber.text.length==9;
    submit2=nom.text.isNotEmpty;
    update();
  }

  void onInDirectCall()async {
    if (!await launchUrl(_number))
      throw 'Could not launch $_number';
    update();
  }
  void createNewUser(String nom,String numTel){
    user=User(nom,numTel);
  }


}