import 'dart:core';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:livraison_app/Controller/RestaurantController.dart';
import 'package:livraison_app/Themes/Theme.dart';
import 'package:livraison_app/classes/Category.dart';
import 'package:livraison_app/Controller/RestaurantScreen_controller.dart';
import 'package:livraison_app/classes/OpenTime.dart';
import 'RestaurantScreen.dart';

class Restaurant extends StatelessWidget {
  final String image;
  final String name;
  final RxList<Category> category;
  final String adress;
  final bool state;
  final OpenTime openTime;
  Restaurant({
    Key? key,
    required this.image,
    required this.name,
    required this.category,
    required this.adress,
    required this.state,
    required this.openTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now().obs;
    var isOpened = (time.value.hour < openTime.openHour.hour ||
            time.value.hour > openTime.closeHour.hour ||
            (time.value.hour == openTime.openHour.hour &&
                time.value.minute < openTime.openHour.minute) ||
            (time.value.hour == openTime.closeHour.hour &&
                time.value.minute > openTime.closeHour.minute))
        ? false.obs
        : true.obs;
    RestaurantController controller = Get.find();
    controller.time_change_detector(openTime, isOpened);

    return InkWell(
      onTap: () {
        RestaurantScreen_controller tab =
            Get.put(RestaurantScreen_controller(), permanent: true);
        tab.inisialize(category.length, 0);

        Get.to(() => RestaurantScreen(
              image: image,
              name: name,
              category: category,
              adress: adress,
              state: state,
              openTime: OpenTime(TimeOfDay(hour: 23, minute: 32),
                  TimeOfDay(hour: 21, minute: 46)),
            ));
      },
      child: Container(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 164,
              child: Container(
                  width: 389.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(9.r),
                  )),
            ),
            Spacer(flex: 8,),
            AutoSizeText(
              name,
              style: theme().textTheme.headline4,
              textAlign: TextAlign.start,
            ),
            Spacer(flex: 5,),
            Row(
              children: [
              ...List.generate(
              category.length,
                  (index) => Row(
                children: [
                  AutoSizeText(
                    index == category.length - 1
                        ? '${category[index].nom_cat}'
                        : '${category[index].nom_cat}-',
                    style: theme().textTheme.subtitle1?.copyWith(
                        color: Color(0xff9D9D9D),
                        fontWeight: FontWeight.normal),
                  ),
                ],
              )
              )
              ]
           ),
            Spacer(flex: 10,),
            Obx((){
              return
                Row(
                  crossAxisAlignment:CrossAxisAlignment.center ,
                  children: [
                    CircleAvatar(
                      radius: 15.r,
                      child: Icon(
                        EvaIcons.mapOutline,
                        color: isOpened.value ? Color(0xff669965) : Colors.red,
                        size: 20.sp,
                      ),
                      backgroundColor:
                      isOpened.value ? Color(0xffE8F7E5) : Color(0xfff7e5ef),
                    ),
                    SizedBox(width: 3.w,),
                    AutoSizeText(isOpened.value ? 'Ouvert' : 'Fermé',
                        style: theme().textTheme.bodyText2),                    SizedBox(width: 20.w,),
                    CircleAvatar(
                      radius: 15.r,
                      child: Icon(
                        EvaIcons.mapOutline,
                        color: Color(0xffE8B364),
                        size: 20.sp,
                      ),
                      backgroundColor: Color(0xffFCF5E4),
                    ),
                    SizedBox(width: 3.w,),
                    AutoSizeText(adress,
                        style: theme().textTheme.bodyText2),
                  ],
                );
            })
          ],
        ),
      ),
    );
  }
}
