import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:livraison_app/View/AdresseScreen.dart';
import 'package:livraison_app/View/HomeScreen.dart';
import 'package:livraison_app/View/LoginScreen.dart';
import 'package:livraison_app/View/MesCommandes.dart';
import 'package:livraison_app/View/OTPScreen.dart';
import 'package:livraison_app/View/OrderConfirmer.dart';
import 'package:livraison_app/View/WelcomeScreen.dart';

import 'SplashScreen.dart';


void main() {
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    if (kReleaseMode) exit(1);
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: ( context, Widget? child) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
    ),
    routes: {
      '/': (context) => SplashScreen(),
      'login':(context)=>LoginScreen(),
      '/acceuil': (context) => Home(),
      '/otp': (context) => OTPScreen(phoneNumber: null,),
      '/adresse': (context) => AdresseScreen(),
      '/welcome': (context) => WelcomeScreen(),
      '/orderconfirmer': (context) => OrderConfirmerScreen(),
      '/mescommandes': (context) => MesCommandes(),
     },
    );
    }
   );
  }
}

