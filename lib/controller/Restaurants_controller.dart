import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:livraison_app/View/Food.dart';
import 'package:livraison_app/View/Restaurant.dart';
import 'package:livraison_app/classes/Category.dart';
import 'package:livraison_app/classes/OpenTime.dart';

class Restaurants_controller extends GetxController {
  bool is_loaded = false;
  final List<Restaurant> restaurants = [
    Restaurant(
      image: 'assets/images/Restaurant1.png',
      name: 'Magic Pizza',
      category: [
        Category(
          'Pizza',
          'assets/images/pizza.svg',
          [
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Pizza Poulet',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Pizza 4 Fromages',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            )
          ], ),
        Category(
          'Tacos',
          'assets/images/tacos.svg',
          [
            Food(
              image: 'assets/images/Pizza.png',
              name: ' Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            )
          ],),
        Category('Tacos','assets/images/tacos.svg',[],),
        Category('Burger','assets/images/burger.svg',[],)
      ].obs,
      adress: 'Oran ,Oran',
      state: true,
      openTime: OpenTime(
          TimeOfDay(hour: 23, minute: 32), TimeOfDay(hour: 21, minute: 46)),
    ),
    Restaurant(
      image: 'assets/images/rest.jpg',
      name: 'DamiS',
      category: [
        Category(
          'Pizza',
          'assets/images/pizza.svg',
          [
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Pizza Poulet',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Pizza 4 Fromages',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            )
          ], ),
        Category(
          'Tacos',
          'assets/images/tacos.svg',
          [
            Food(
              image: 'assets/images/Pizza.png',
              name: ' Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            )
          ], ),
        Category( 'Tacos','assets/images/tacos.svg',[],),
        Category( 'Burger','assets/images/burger.svg',[],)
      ].obs,
      adress: 'Oran ,Oran',
      state: true,
      openTime: OpenTime(
          TimeOfDay(hour: 23, minute: 32), TimeOfDay(hour: 21, minute: 46)),
    ),
    Restaurant(
      image: 'assets/images/rest2.jpg',
      name: 'Play Food',
      category: [
        Category(
          'Pizza',
          'assets/images/pizza.svg',
          [
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Pizza Poulet',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Pizza 4 Fromages',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            )
          ],),
        Category(
          'Tacos',
          'assets/images/tacos.svg',
          [
            Food(
              image: 'assets/images/Pizza.png',
              name: ' Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            )
          ], ),
      ].obs,
      adress: 'Oran ,Oran',
      state: true,
      openTime: OpenTime(
          TimeOfDay(hour: 23, minute: 32), TimeOfDay(hour: 21, minute: 46)),
    ),
    Restaurant(
      image: 'assets/images/Restaurant1.png',
      name: 'Magic Pizza',
      category: [
        Category(
          'Pizza',
          'assets/images/pizza.svg',
          [
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Pizza Poulet',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Pizza 4 Fromages',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            )
          ], ),
        Category(
          'Tacos',
          'assets/images/tacos.svg',
          [
            Food(
              image: 'assets/images/Pizza.png',
              name: ' Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            )
          ],),
        Category('Tacos','assets/images/tacos.svg',[],),
        Category('Burger','assets/images/burger.svg',[],)
      ].obs,
      adress: 'Oran ,Oran',
      state: true,
      openTime: OpenTime(
          TimeOfDay(hour: 23, minute: 32), TimeOfDay(hour: 21, minute: 46)),
    ),
    Restaurant(
      image: 'assets/images/rest.jpg',
      name: 'DamiS',
      category: [
        Category(
          'Pizza',
          'assets/images/pizza.svg',
          [
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Pizza Poulet',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Pizza 4 Fromages',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            )
          ], ),
        Category(
          'Tacos',
          'assets/images/tacos.svg',
          [
            Food(
              image: 'assets/images/Pizza.png',
              name: ' Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            )
          ], ),
        Category( 'Tacos','assets/images/tacos.svg',[],),
        Category( 'Burger','assets/images/burger.svg',[],)
      ].obs,
      adress: 'Oran ,Oran',
      state: true,
      openTime: OpenTime(
          TimeOfDay(hour: 23, minute: 32), TimeOfDay(hour: 21, minute: 46)),
    ),
    Restaurant(
      image: 'assets/images/rest2.jpg',
      name: 'Play Food',
      category: [
        Category(
          'Pizza',
          'assets/images/pizza.svg',
          [
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Pizza Poulet',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Pizza 4 Fromages',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            )
          ],),
        Category(
          'Tacos',
          'assets/images/tacos.svg',
          [
            Food(
              image: 'assets/images/Pizza.png',
              name: ' Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            ),
            Food(
              image: 'assets/images/Pizza.png',
              name: 'Mega Pizza',
              prix: 500,
              description: 'Fromage, Poulet, Sauce Fromage',
              ajouter: false.obs,
            )
          ], ),
      ].obs,
      adress: 'Oran ,Oran',
      state: true,
      openTime: OpenTime(
          TimeOfDay(hour: 23, minute: 32), TimeOfDay(hour: 21, minute: 46)),
    ),
  ];
  @override
  void onInit() {
    super.onInit();
    loading();
  }

  @override
  Future loading() async {
    is_loaded = false;
    await Future.delayed(Duration(seconds: 1), () {});
    is_loaded = true;
    update();
  }
 @override
  void onClose() {
    super.onClose();
  }
}
