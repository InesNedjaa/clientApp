import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class OTPScreenController extends GetxController{
  final Uri _number = Uri.parse('tel:+213556000010');
  bool codeTrue=true;
  bool submitOTP=false;
  bool submit1=false;
  bool submit2=false;
  bool submit3=false;
  bool submit4=false;
  bool submit5=false;
  bool submit6=false;
  final digitCode1=new TextEditingController();
  final digitCode2=new TextEditingController();
  final digitCode3=new TextEditingController();
  final digitCode4=new TextEditingController();
  final digitCode5=new TextEditingController();
  final digitCode6=new TextEditingController();
  void onSubmitOTP() {
    submit1=digitCode1.text.isNotEmpty;
    submit2=digitCode2.text.isNotEmpty;
    submit3=digitCode3.text.isNotEmpty;
    submit4=digitCode4.text.isNotEmpty;
    submit5=digitCode5.text.isNotEmpty;
    submit6=digitCode6.text.isNotEmpty;
    update();
  }
  void onInDirectCall()async {
    if (!await launchUrl(_number))
      throw 'Could not launch $_number';
    update();
  }
  @override
  void onClose() {
    digitCode1.dispose();
    digitCode2.dispose();
    digitCode3.dispose();
    digitCode4.dispose();
    digitCode5.dispose();
    digitCode6.dispose();;
    super.onClose();
  }
}