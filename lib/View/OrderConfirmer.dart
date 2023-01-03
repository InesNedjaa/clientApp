import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:livraison_app/Themes/Theme.dart';
import 'currentPage.dart';

class OrderConfirmerScreen extends StatelessWidget {
  OrderConfirmerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(flex:250, child: Container(),),
            Expanded(
              flex: 229,
              child: Row(
                children: [
                  Spacer(flex: 30,),
                  Expanded(flex:370, child:SvgPicture.asset('assets/images/undraw_on_the_way_re_swjt.svg',)),
                  Spacer(flex: 28,),
                ],
              ),
            ),
            Spacer(flex: 4,),
            Row(
              children: [
                Expanded(flex: 5, child: Container()),
                Expanded(
                  flex: 33,
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      'Votre commande en route',
                      style: theme().textTheme.headline1,
                      maxLines: 1,
                    ),
                  ),
                ),
                Expanded( flex: 5, child: Container(),),
              ],
            ),
            Row(
              children: [
                Expanded(flex: 5, child: Container()),
                Expanded(
                  flex: 33,
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      'vers vous',
                      maxLines: 1,
                      style:theme().textTheme.headline1,
                    ),
                  ),
                ),
                Expanded( flex: 5, child: Container(),),
              ],
            ),
            Expanded( flex: 20, child: Container(),),
            Row(
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 40,
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      'Numéro de commande :123456789 ',
                      maxLines: 2,
                      style: theme().textTheme.headline5,
                    ),
                  ),
                ),
                Expanded(flex: 1, child: Container()),
              ],
            ),
            Expanded(
              flex: 30,
              child: Container(),
            ),
            Row(
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 24,
                  child: Container(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Main_Page()));
                        },
                      child: Text(
                        'Continue',
                        style: theme().textTheme.headline2,
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffE6424B),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.0),
                              side: BorderSide(color: Colors.red))),
                    ),
                  ),
                ),
                Expanded(flex: 1, child: Container()),
              ],
            ),
            Expanded(flex: 250, child: Container(),),
          ],
        ),
      ),
    );
  }
}
