import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PanierVide extends StatelessWidget {
  PanierVide({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 313,),
          Expanded(
            flex: 300,
            child: Row(
              children: [
                Spacer(flex: 64,),
                Container(
                  child: Lottie.asset('assets/json/empty.json',animate: true,repeat: true),),
                Spacer(flex: 64,),
              ],
            ),
          ),
          Spacer(flex: 313,),
        ],
      ),
    );
  }
}

