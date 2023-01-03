import 'package:get/get.dart';
import 'package:livraison_app/Controller/AppController.dart';

class controllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AppController>(() =>AppController());

  }
}