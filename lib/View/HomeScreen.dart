//import 'dart:html';
import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:livraison_app/Controller/LoginScreenController.dart';
import 'package:livraison_app/Controller/RestaurantController.dart';
import 'package:livraison_app/Themes/Theme.dart';
import 'package:livraison_app/View/LoginScreen.dart';
import 'package:livraison_app/View/RestaurantsScreen.dart';
import 'package:livraison_app/View/SearchScreen.dart';
import 'package:livraison_app/classes/promotion.dart';
import 'package:livraison_app/Controller/HomeScreenController.dart';
import 'package:shimmer/shimmer.dart';

import 'RestaurantScreen.dart';
import 'categoryScreen.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    HomeScreenController controller = Get.put(HomeScreenController(), permanent: true);
    RestaurantController restaurantController=Get.put(RestaurantController(), permanent: true);
    var is_loaded = true ;
    /////////////////////////////////////////////////////////////////////////////////////////////

    Random random = new Random();

    /////////////////////////////////////////////////////////////////////////////////////////////

    return Scaffold(
        body: Column(children: [
          Spacer(flex: 39,),
          Row(
            children: [
              SizedBox(
            width: 13.w,
          ),
              AutoSizeText(
            'Salut ${LoginScreenController.user.nom} ,\nBienvenue dans notre magasin !',
            style: theme().textTheme.bodyText1?.copyWith(color: Colors.black)
          ),
            ],
          ),
          Spacer(flex: 26,),
          Row(
            children: [
              SizedBox(
            width: 13.w,
          ),
              Container(
                height: 56.h,
                width: 401.w,
                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(9.r)),
                child: Row(
                  children: [
                    Expanded(
                  child: Row(
                    children: [
                      SizedBox(width: 11.w,),
                      Image.asset('assets/images/camion.png'),
                      SizedBox(width: 7.w,),
                      AutoSizeText(
                        'Votre adresse\n${LoginScreenController.user.Adresse}',
                        style: theme().textTheme.bodyText1?.copyWith(color: Colors.black)
                      ),
                    ],
                  ),
                ),
                    TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context,'/adresse');
                    },
                    child: AutoSizeText(
                      'Modifier',
                      style: theme().textTheme.bodyText1?.copyWith(color: Color(0xffE6424B))

                    ))
                  ],
                ),
          ),
            ],
          ),
          Spacer(flex: 26,),
          Row(
            children: [
               SizedBox(width: 13.w,),
               AutoSizeText(
                'Nouvelles offres',
                style: theme().textTheme.headline4
              ),
            ],
            ),
          Spacer(flex: 12,),
          Expanded(
            flex: 190,
            child: is_loaded ?
            ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.promotion.length,
                      itemBuilder: (context,index) {
                        final promo=controller.promotion[index];
                        return Row(
                          children: [
                            SizedBox(width: 13.w,),
                            Promotion(
                            descriptionOffre: promo.descriptionOffre,
                            nameRestaurant:promo.nameRestaurant,
                            offre: promo.offre,
                            image: promo.image,),
                          ],
                        );
                      },
                     ): shimmer_promotion() ,
          ),
          Spacer(flex: 18,),
          Row(
           children: [
            SizedBox(
            width: 13.w,
            ),
          AutoSizeText(
            'Explorer les catégories',
            maxLines: 1,
            style: theme().textTheme.headline4
          ),]),
          Spacer(flex: 16,),
          Expanded(
            flex: 110,
            child: is_loaded ?
            ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: controller.Cat.length,
                itemBuilder: (context, index) {
                  final image = controller.Cat[index].asset;
                  final name=controller.Cat[index].nom_cat;
                  return Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 13.w,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap:()=>Get.to(CategoryScreen(category_name: '$name',)),
                              child: Container(
                               height: 71.h,
                               width: 71.h,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(200.0)),
                                  border: Border.all(
                                    color: Color(0xffB8B4B4),
                                    width: 1.0.w,
                                  ),
                                ),
                                child: CircleAvatar(
                                  radius: 35.r,
                                  backgroundColor: Colors.white,
                                  child: SvgPicture.asset('$image',
                                      height: 30.h,
                                      width:30.w,
                                      fit: BoxFit.scaleDown
                                  ),
                                ),
                              ),
                            ),
                            AutoSizeText(
                              '$name',
                            style: theme().textTheme.bodyText2)
                          ],
                        ),
                      ],
                    ),
                  );
                }) : shimmer_category() ,
          ),
         // Spacer(flex: 17,),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SizedBox(width: 13.w,),
                    AutoSizeText(
                      'Restaurants',
                      maxLines: 1,
                      style: theme().textTheme.headline4
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: (){Get.to(()=>RestaurantsScreen());},
                  child: AutoSizeText(
                    'Afficher tout',
                    style: theme().textTheme.bodyText1?.copyWith(color: Color(0xffE6424B))
                  )),
              SizedBox(width: 13.w,),
            ],
          ),
          //Spacer(flex: 17,),
          Expanded(
            flex: 280,
            child: is_loaded ?
            ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: controller.restaurants.length,
                  itemBuilder: (context, index) =>Row(
                    children: [
                      SizedBox(width: 13.w,),
                      controller.restaurants[index],
                    ],
                  )
                  ) : shimmer_restaurant() ,
            ),
          Spacer(flex: 26,) ,
        ],
      ),
    );
  }
  Widget shimmer_promotion() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      period: Duration(seconds: 3),
      child:

      ListView.builder(
        addAutomaticKeepAlives: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount:3 ,
        itemBuilder: (context,index) {
          return Row(
            children: [
              SizedBox(
                width: 13.w,
              ),
              Container(
                  height:153.h ,
                  width:396.w ,
                  decoration : BoxDecoration(
                    color : Colors.white,
                    borderRadius: BorderRadius.circular(9.r) ,

                  )
              )
            ],
          );
        },
      ),
    );
  }
  Widget shimmer_category () {
    return Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        period: Duration(seconds: 3),
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount:7,
            itemBuilder: (context, index) {
              return
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 13.w,
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(200.0)),
                                color: Colors.white
                            ),
                            child: CircleAvatar(
                              radius: 35.r,
                              backgroundColor: Colors.white,

                            ),
                          ),
                          SizedBox(height: 10.h,),
                          Container(
                            height: 13.h,
                            width: 55.w,
                            decoration: BoxDecoration(
                                color: Colors.white ,
                                borderRadius: BorderRadius.circular(9.r)
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
            }) ) ;

  }
  Widget shimmer_restaurant () {
    return Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        period: Duration(seconds: 3),
        child:
        ListView.builder(
          addAutomaticKeepAlives: true,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount:3 ,
          itemBuilder: (context,index) {
            return
              Row(
                children: [
                  SizedBox(
                    width: 13.w,
                  ),
                  Container(

                    width:389.w ,
                    child : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 153.h ,
                            width:389.w ,
                            decoration : BoxDecoration(
                              color : Colors.white,
                              borderRadius: BorderRadius.circular(9.r) ,

                            )
                        ) ,
                        SizedBox(height: 10.h,) ,
                        Container(
                            height : 13.h ,
                            width: 150.w,
                            decoration : BoxDecoration(
                              color : Colors.white,
                              borderRadius: BorderRadius.circular(9.r) ,

                            )
                        ),
                        SizedBox(height: 10.h,) ,
                        Container(
                            height : 13.h ,
                            width: 250.w,
                            decoration : BoxDecoration(
                              color : Colors.white,
                              borderRadius: BorderRadius.circular(9.r) ,

                            )
                        ),


                        SizedBox(height: 10.h,) ,
                        Row(
                          crossAxisAlignment:CrossAxisAlignment.center ,
                          children: [
                            Container(
                                height: 13.h,
                                width: 150.w,
                                decoration : BoxDecoration(
                                  color : Colors.white,
                                  borderRadius: BorderRadius.circular(9.r) ,

                                )
                            ),
                            SizedBox(width: 8.w,) ,
                            Expanded(
                              child: Container(
                                  height: 13.h,

                                  decoration : BoxDecoration(
                                    color : Colors.white,
                                    borderRadius: BorderRadius.circular(9.r) ,

                                  )
                              ),
                            ),


                          ],
                        )
                      ],
                    ),

                  )

                ],
              );

          },
        ));
  }
}
