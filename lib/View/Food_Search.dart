import 'dart:core';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:livraison_app/Themes/Theme.dart';
import 'package:livraison_app/Controller/RestaurantScreen_controller.dart';
import 'Restaurant.dart';
import 'RestaurantScreen.dart';

class Food_Search extends StatelessWidget {
  final String image ;
  final String name ;
  final double prix ;
  final String description ;
  final Restaurant restaurant ;


  Food_Search( {Key? key,  required this.image,  required this.name, required this.prix ,  required this.description, required this.restaurant,   }) : super(key: key) ;



  @override
  Widget build(BuildContext context) {

    return
      InkWell(
        onTap: (){
          RestaurantScreen_controller tab = Get.put(RestaurantScreen_controller() , permanent: true ) ;
          tab.inisialize(restaurant.category.length , 0) ;

          Get.to( ()=>
              RestaurantScreen(image: restaurant.image, name: restaurant.name, category: restaurant.category, adress: restaurant.adress, state: restaurant.state, openTime: restaurant.openTime,)
          );

        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 161.h ,
                width:281.w ,
                decoration : BoxDecoration(
                  image : DecorationImage(image: AssetImage(image) , fit: BoxFit.cover ) ,
                  borderRadius: BorderRadius.circular(9.r) ,

                )

            ) ,
            SizedBox(height: 10.h,) ,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(name  ,
                        style: theme().textTheme.subtitle1 ,
                        textAlign: TextAlign.start,) ,
                      AutoSizeText('$prix'+ ' DA' ,
                          textAlign: TextAlign.start,
                          style: theme().textTheme.subtitle1
                      ) ,
                    ],
                  ),
                ) ,

              ],) ,

          ],

        ),
      );
  }
}
