import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livraison_app/classes/Category.dart';
import 'package:livraison_app/classes/promotion.dart';

import '../View/Food.dart';
import '../View/Restaurant.dart';
import '../classes/OpenTime.dart';

class HomeScreenController extends GetxController {

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
  ];
  List<Promotion> promotion = [
    Promotion(
        image: 'assets/images/promo1.png',
        nameRestaurant: 'Pizza | Street 22',
        offre: 'Achetez 1,obtenez- 1 gratuitement',
        descriptionOffre: 'Pizza géante: poulet et viande hachée'),
    Promotion(
        image: 'assets/images/promo1.png',
        nameRestaurant: 'Pizza | Street 22',
        offre: 'Achetez 1,obtenez- 1 gratuitement',
        descriptionOffre: 'Pizza géante: poulet et viande hachée'),
    Promotion(
        image: 'assets/images/promo1.png',
        nameRestaurant: 'Pizza | Street 22',
        offre: 'Achetez 1,obtenez- 1 gratuitement',
        descriptionOffre: 'Pizza géante: poulet et viande hachée'),
    Promotion(
        image: 'assets/images/promo1.png',
        nameRestaurant: 'Pizza | Street 22',
        offre: 'Achetez 1,obtenez- 1 gratuitement',
        descriptionOffre: 'Pizza géante: poulet et viande hachée'),
  ];

  List<Category> Cat = [
    Category(
      'Pizza',
      'assets/images/pizza.svg',
      []
    ),
    Category(
      'Soup',
      'assets/images/soup.svg',
      []
    ),
    Category(
      'Sandwich',
      'assets/images/sandwich.svg',
      []
    ),
    Category(
      'Drink',
      'assets/images/drink.svg',
      []
    ),
    Category(
      'Burger',
      'assets/images/burger.svg',
      []
    ),
    Category(
      'Tacos',
      'assets/images/tacos.svg',
      []
    ),

  ];
  static List<Color> ColorsPromo = [
    Color(0xffE6424B),
    Color(0xff3F3D56),
    Color(0xfff9a825),
    Color(0xffff6584),
    Color(0xff8b4e56),
    Color(0xff6b667c),
    Color(0xffe1e0e1)
  ];
  static var ind = Random();
}
