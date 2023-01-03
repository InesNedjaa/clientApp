import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:livraison_app/Themes/Theme.dart';


class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(flex: 308, child: Container(),),
                  Row(
                    children: [
                      Spacer(flex: 5,),
                      AutoSizeText.rich(
                        TextSpan(
                            children:[
                              TextSpan(text: 'Vous êtes les bienvenus'),
                              TextSpan(text: '\ndans notre application'),
                            ]
                        ),
                        style: theme().textTheme.headline1,
                      ),
                      Spacer(flex: 5,),
                    ],
                  ),
            Spacer(flex: 10,),
            Row(
              children: [
                Spacer(flex: 1,),
                Align(
                  alignment: Alignment.center,
                  child: AutoSizeText(
                    'Nous apprécions chacun de nos clients et\nespérons que vous apprécierez avec nous',
                    maxLines: 2,
                    style: theme().textTheme.headline5,
                  ),
                ),
                Spacer(flex: 1,),
              ],
            ),
            Spacer(flex: 40,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Container(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/adresse');
                      },
                      child: Text(
                        'Continue',
                        style: theme().textTheme.headline2


                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffE6424B),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.0),
                              side: BorderSide(color: Colors.red))),
                    ),
                  ),
                ),
                Spacer(flex: 1,),
              ],
            ),
            Spacer(flex: 407,),
          ],
        ),
      ),
    );
  }
}
