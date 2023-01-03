import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livraison_app/View/Food.dart';
import 'package:livraison_app/View/Food_Search.dart';
import 'package:livraison_app/View/Restaurant.dart';
import 'package:livraison_app/classes/Category.dart';
import 'package:livraison_app/classes/OpenTime.dart';

class SearchController extends GetxController {
  final List<Restaurant> restaurants = [
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
        Category( 'Tacos','assets/images/tacos.svg',[],),
        Category( 'Burger','assets/images/burger.svg',[],)
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

  final List<Map<String, List<Food_Search>>> food = [
    {
      'Pizza': [
        Food_Search(
          image: 'assets/images/Pizza.png',
          name: 'Pizza Poulet',
          prix: 500,
          description: 'Fromage, Poulet, Sauce Fromage',
          restaurant: Restaurant(
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
              Category('Burger','assets/images/burger.svg',[], )
            ].obs,
            adress: 'Oran ,Oran',
            state: true,
            openTime: OpenTime(TimeOfDay(hour: 23, minute: 32),
                TimeOfDay(hour: 21, minute: 46)),
          ),
        ),
        Food_Search(
          image: 'assets/images/Pizza.png',
          name: 'Pizza Poulet',
          prix: 500,
          description: 'Fromage, Poulet, Sauce Fromage',
          restaurant: Restaurant(
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
              Category('Tacos','assets/images/tacos.svg',[], ),
              Category('Burger','assets/images/burger.svg',[], )
            ].obs,
            adress: 'Oran ,Oran',
            state: true,
            openTime: OpenTime(TimeOfDay(hour: 23, minute: 32),
                TimeOfDay(hour: 21, minute: 46)),
          ),
        ),
        Food_Search(
          image: 'assets/images/Pizza.png',
          name: 'Pizza Poulet',
          prix: 500,
          description: 'Fromage, Poulet, Sauce Fromage',
          restaurant: Restaurant(
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
              Category( 'Tacos','assets/images/tacos.svg',[],),
              Category( 'Burger','assets/images/tacos.svg',[],)
            ].obs,
            adress: 'Oran ,Oran',
            state: true,
            openTime: OpenTime(TimeOfDay(hour: 23, minute: 32),
                TimeOfDay(hour: 21, minute: 46)),
          ),
        )
      ]
    },
    {
      'Salade': [
        Food_Search(
          image: 'assets/images/Pizza.png',
          name: 'Salade Poulet',
          prix: 500,
          description: 'Fromage, Poulet, Sauce Fromage',
          restaurant: Restaurant(
            image: 'lib/Asset/Images/rest.jpg',
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
              Category('Tacos','assets/images/tacos.svg',[], ),
              Category( 'Burger','assets/images/burger.svg',[],)
            ].obs,
            adress: 'Oran ,Oran',
            state: true,
            openTime: OpenTime(TimeOfDay(hour: 23, minute: 32),
                TimeOfDay(hour: 21, minute: 46)),
          ),
        ),
        Food_Search(
          image: 'assets/images/Pizza.png',
          name: 'Salade Poulet',
          prix: 500,
          description: 'Fromage, Poulet, Sauce Fromage',
          restaurant: Restaurant(
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
              Category('Tacos','assets/images/tacos.svg',[], ),
              Category('Burger','assets/images/burger.svg',[], )
            ].obs,
            adress: 'Oran ,Oran',
            state: true,
            openTime: OpenTime(TimeOfDay(hour: 23, minute: 32),
                TimeOfDay(hour: 21, minute: 46)),
          ),
        ),
        Food_Search(
          image: 'assets/images/Pizza.png',
          name: 'Salade Poulet',
          prix: 500,
          description: 'Fromage, Poulet, Sauce Fromage',
          restaurant: Restaurant(
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
              Category('Burger','assets/images/burger.svg',[], )
            ].obs,
            adress: 'Oran ,Oran',
            state: true,
            openTime: OpenTime(TimeOfDay(hour: 23, minute: 32),
                TimeOfDay(hour: 21, minute: 46)),
          ),
        ),
      ],

    },
    {
      'Sandwich': [
        Food_Search(
          image: 'assets/images/Product.png',
          name: 'Sandwich poulet',
          prix: 300,
          description: 'Fromage, Poulet, Sauce Fromage',
          restaurant: Restaurant(
            image: 'lib/Asset/Images/rest.jpg',
            name: 'DamiS',
            category: [
              Category(
                'Sandwich',
                'assets/images/Product.png',
                [
                  Food(
                    image: 'assets/images/Product.png',
                    name: 'Sandwich viande hachée ',
                    prix: 500,
                    description: 'Fromage, Poulet, Sauce Fromage',
                    ajouter: false.obs,
                  ),
                  Food(
                    image: 'assets/images/Product.png',
                    name: 'Sandwich kabab',
                    prix: 500,
                    description: 'Fromage, Poulet, Sauce Fromage',
                    ajouter: false.obs,
                  ),
                  Food(
                    image: 'assets/images/Product.png',
                    name: 'Sanwdich végitarien',
                    prix: 500,
                    description: 'Fromage, Poulet, Sauce Fromage',
                    ajouter: false.obs,
                  ),

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
              Category('Tacos','assets/images/tacos.svg',[], ),
              Category( 'Burger','assets/images/burger.svg',[],)
            ].obs,
            adress: 'Oran ,Oran',
            state: true,
            openTime: OpenTime(TimeOfDay(hour: 23, minute: 32),
                TimeOfDay(hour: 21, minute: 46)),
          ),
        ),
        Food_Search(
          image: 'assets/images/Product.png',
          name: 'Sandwich doublé',
          prix: 500,
          description: 'Fromage, Poulet, Sauce Fromage',
          restaurant: Restaurant(
            image: 'assets/images/rest.jpg',
            name: 'DamiS',
            category: [
              Category(
                'Sandwich',
                'assets/images/sandwich.svg',
                [
                  Food(
                    image: 'assets/images/Product.png',
                    name: 'Sandwich doublé',
                    prix: 500,
                    description: 'Fromage, Poulet, Sauce Fromage',
                    ajouter: false.obs,
                  ),
                  Food(
                    image: 'assets/images/Product.png',
                    name: 'Sandwich viande hachée',
                    prix: 500,
                    description: 'Fromage, Poulet, Sauce Fromage',
                    ajouter: false.obs,
                  ),
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
                    image: 'assets/images/Product.png',
                    name: 'Mega Pizza',
                    prix: 500,
                    description: 'Fromage, Poulet, Sauce Fromage',
                    ajouter: false.obs,
                  )
                ], ),
              Category('Tacos','assets/images/tacos.svg',[], ),
              Category('Burger','assets/images/burger.svg',[], )
            ].obs,
            adress: 'Oran ,Oran',
            state: true,
            openTime: OpenTime(TimeOfDay(hour: 23, minute: 32),
                TimeOfDay(hour: 21, minute: 46)),
          ),
        ),
        Food_Search(
          image: 'assets/images/Pizza.png',
          name: 'Salade Poulet',
          prix: 500,
          description: 'Fromage, Poulet, Sauce Fromage',
          restaurant: Restaurant(
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
              Category('Burger','assets/images/burger.svg',[], )
            ].obs,
            adress: 'Oran ,Oran',
            state: true,
            openTime: OpenTime(TimeOfDay(hour: 23, minute: 32),
                TimeOfDay(hour: 21, minute: 46)),
          ),
        ),
      ]
    }
  ];

  void scroll(var visible) {
    visible.value = false;
    update();
  }
}
//controller.position.userScrollDirection == ScrollDirection.forward
