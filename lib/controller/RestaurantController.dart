import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:livraison_app/View/Food.dart';
import 'package:livraison_app/View/Food_Search.dart';
import 'package:livraison_app/View/Restaurant.dart';
import 'package:get/get.dart';
import 'package:livraison_app/classes/Category.dart';
import 'package:livraison_app/classes/OpenTime.dart';

class RestaurantController extends GetxController {
  var time = DateTime.now().obs;
  final List<Restaurant> restaurants = [
    Restaurant(
      image: 'assets/images/rest.jpg',
      name: 'DamiS',
      category: [
        Category('Pizza','assets/images/pizza.svg',[
          Food(
            image: 'asstes/images/Pizza.png',
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
        ]),
        Category('Tacos','assets/images/tacos.svg',
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
        Category( 'Tacos','assets/images/tacos.svg',[]),
        Category( 'Burger','assets/images/burger.svg',[])
      ].obs,
      adress: 'Oran ,Oran',
      state: true,
      openTime: OpenTime(
          TimeOfDay(hour: 23, minute: 32), TimeOfDay(hour: 21, minute: 46)),
    ),
  ];

  /*  Restaurant(image: 'lib/Asset/Images/Restaurant1.png', name: 'Magic Pizza',
      category: [Category([], 'Pizza') ,].obs, adress: 'Oran ,Oran', state: true, openTime: OpenTime(22 , 15) ,) ,
    Restaurant(image: 'lib/Asset/Images/rest.jpg', name: 'DamiS', category: [
      Category([Food(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza Poulet', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,   ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,) ,Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs, ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs, ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza 4 Fromages', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,)], 'Pizza') ,
      Category([ Food(image: 'lib/Asset/Images/Pizza.png', name: ' Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,    ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,    )], 'Tacos')   ,Category([], 'Tacos') ,Category([], 'Burger')].obs, adress: 'Oran ,Oran', state: true, openTime: OpenTime(22 , 15), ) ,
   Restaurant(image: 'lib/Asset/Images/rest2.jpg', name: 'Milano', category: [Category([], 'Pizza') ,Category([], 'Chicken') ,Category([], 'Sandwich')].obs, adress: 'Oran ,Oran', state: true, openTime: OpenTime(22 , 15), ) ,
  */

  final List<Map<String, List<Food_Search>>> food = [];
  /*
    { 'Pizza': [Food_Search(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza Poulet', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', restaurant: Restaurant(image: 'lib/Asset/Images/rest.jpg', name: 'DamiS', category: [
      Category([Food(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza Poulet', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,   ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,) ,Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs, ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs, ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza 4 Fromages', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,)], 'Pizza') ,
      Category([ Food(image: 'lib/Asset/Images/Pizza.png', name: ' Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,    ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,    )], 'Tacos')   ,Category([], 'Tacos') ,Category([], 'Burger')].obs, adress: 'Oran ,Oran', state: true, openTime: OpenTime(22 , 15),),) ,
                Food_Search(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza Poulet', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', restaurant: Restaurant(image: 'lib/Asset/Images/rest.jpg', name: 'DamiS', category: [
                  Category([Food(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza Poulet', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,   ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,) ,Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs, ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs, ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza 4 Fromages', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,)], 'Pizza') ,
                  Category([ Food(image: 'lib/Asset/Images/Pizza.png', name: ' Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,    ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,    )], 'Tacos')   ,Category([], 'Tacos') ,Category([], 'Burger')].obs, adress: 'Oran ,Oran', state: true, openTime: OpenTime(22 , 15),)) ,
                Food_Search(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza Poulet', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', restaurant: Restaurant(image: 'lib/Asset/Images/rest.jpg', name: 'DamiS', category: [
                  Category([Food(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza Poulet', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,   ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,) ,Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs, ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs, ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza 4 Fromages', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,)], 'Pizza') ,
                  Category([ Food(image: 'lib/Asset/Images/Pizza.png', name: ' Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,    ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,    )], 'Tacos')   ,Category([], 'Tacos') ,Category([], 'Burger')].obs, adress: 'Oran ,Oran', state: true, openTime: OpenTime(22 , 15), )) ]} ,



    { 'Salade' : [Food_Search(image: 'lib/Asset/Images/Pizza.png', name: 'Salade Poulet', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', restaurant: Restaurant(image: 'lib/Asset/Images/rest.jpg', name: 'DamiS', category: [
      Category([Food(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza Poulet', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,   ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,) ,Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs, ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs, ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza 4 Fromages', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,)], 'Pizza') ,
      Category([ Food(image: 'lib/Asset/Images/Pizza.png', name: ' Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,    ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,    )], 'Tacos')   ,Category([], 'Tacos') ,Category([], 'Burger')].obs, adress: 'Oran ,Oran', state: true, openTime: OpenTime(22 , 15), ),) ,
                  Food_Search(image: 'lib/Asset/Images/Pizza.png', name: 'Salade Poulet', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', restaurant: Restaurant(image: 'lib/Asset/Images/rest.jpg', name: 'DamiS', category: [
                    Category([Food(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza Poulet', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,   ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,) ,Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs, ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs, ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza 4 Fromages', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,)], 'Pizza') ,
                    Category([ Food(image: 'lib/Asset/Images/Pizza.png', name: ' Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,    ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,    )], 'Tacos')   ,Category([], 'Tacos') ,Category([], 'Burger')].obs, adress: 'Oran ,Oran', state: true, openTime: OpenTime(22 , 15),)) ,
                  Food_Search(image: 'lib/Asset/Images/Pizza.png', name: 'Salade Poulet', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', restaurant: Restaurant(image: 'lib/Asset/Images/rest.jpg', name: 'DamiS', category: [
                    Category([Food(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza Poulet', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,   ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,) ,Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs, ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs, ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Pizza 4 Fromages', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,)], 'Pizza') ,
                    Category([ Food(image: 'lib/Asset/Images/Pizza.png', name: ' Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,    ) , Food(image: 'lib/Asset/Images/Pizza.png', name: 'Mega Pizza', prix: 500, description: 'Fromage, Poulet, Sauce Fromage', ajouter: false.obs,    )], 'Tacos')   ,Category([], 'Tacos') ,Category([], 'Burger')].obs, adress: 'Oran ,Oran', state: true, openTime: OpenTime(22 , 15), )) ,
    ] }, */

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
}
