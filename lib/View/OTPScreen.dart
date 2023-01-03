import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:livraison_app/Themes/Theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:livraison_app/Widgets/customDialog.dart';
import 'package:livraison_app/Controller/AppController.dart';
import 'package:livraison_app/Controller/OTPScreenController.dart';

class OTPScreen extends StatefulWidget {
  final phoneNumber;
  OTPScreen({Key? key,required this.phoneNumber}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  OTPScreenController controller = Get.put( OTPScreenController(),permanent: true,);

  Widget build(BuildContext context) {
    final Uri _number = Uri.parse('tel:+213556000010');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Spacer(flex: 10,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: AutoSizeText(
                      'Vérification OTP',
                      maxLines: 2,
                      style: theme().textTheme.headline1,
                    ),
                  ),
                )
              ],
            ),
            Spacer(flex:1,),

            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text:
                                'Vous recevrez un code de 6 chiffres sur votre\nnuméro de téléphone +213${widget.phoneNumber.text}, ',
                            style: theme().textTheme.headline5),
                        TextSpan(
                            text: 'Changer le numéro de téléphone ?',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.pushReplacementNamed(
                                  context, '/'),
                            style: theme().textTheme.headline5?.copyWith(color: Color(0xffE6424B))
                            )
                      ]),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(flex: 5,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: AutoSizeText(
                      'Code de vérfication',
                      style: theme().textTheme.headline4,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(flex: 1,),
            Row(
              children: [
                Spacer(flex: 14,),
                Expanded(
                  flex: 57,
                  child: _textFieldOTP(
                    first: true,
                    last: false,
                    numero: 1,
                    digitCodeN: controller.digitCode1,
                  ),
                ),
                Spacer(flex: 11,),
                Expanded(
                  flex: 57,
                  child: _textFieldOTP(
                    first: false,
                    last: false,
                    numero: 2,
                    digitCodeN: controller.digitCode2,
                  ),
                ),
                Spacer(flex: 11,),
                Expanded(
                  flex: 57,
                  child: _textFieldOTP(
                    first: false,
                    last: false,
                    numero: 3,
                    digitCodeN: controller.digitCode3,
                  ),
                ),
                Spacer(flex: 11,),
                Expanded(
                  flex: 57,
                  child: _textFieldOTP(
                    first: false,
                    last: false,
                    numero: 4,
                    digitCodeN: controller.digitCode4,
                  ),
                ),
                Spacer(flex: 11,),
                Expanded(
                  flex: 57,
                  child: _textFieldOTP(
                    first: false,
                    last: false,
                    numero: 5,
                    digitCodeN: controller.digitCode5,
                  ),
                ),
                Spacer(flex: 11,),
                Expanded(
                  flex: 57,
                  child: _textFieldOTP(
                    first: false,
                    last: true,
                    numero: 6,
                    digitCodeN: controller.digitCode6,
                  ),
                ),
                Spacer(flex: 14,),
              ],
            ),
            Spacer(flex: 4,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: GetBuilder(
                    builder: (OTPScreenController controller) => Container(
                      height: 50,
                      child: ElevatedButton(
                        onPressed:
                                controller.submit1 &&
                                controller.submit2 &&
                                controller.submit3 &&
                                controller.submit4 &&
                                controller.submit5 &&
                                controller.submit6
                            ? () async {
                                if(controller.codeTrue){
                                  Get.toNamed('/welcome');}
                                    else{
                                      AppController.showDialogButton(
                                      'le code de vérification est erroné',
                                      'votre code est erroné veuillez ajouter',
                                      'un code valide',
                                      'assets/json/exclamation.json',

                                      );}}
                            : null,
                        child: Text(
                          'Continue',
                          style: theme().textTheme.headline2,
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffE6424B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.0),
                            )),
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 1,),
              ],
            ),
           Spacer(flex: 4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  'Vous avez un problème  ?',
                  style: theme().textTheme.headline5?.copyWith(color: Colors.black),
                ),
                TextButton(
                    onPressed: () async {
                      if (!await launchUrl(_number))
                        throw 'Could not launch $_number';
                    },
                    child: AutoSizeText(
                      'Contactez-nous',
                      style: theme().textTheme.headline5?.copyWith(color: Color(0xffE6424B))
                    ))
              ],
            ),
            Spacer(flex: 50,)
          ],
        ),
      ),
    );
  }

  Widget _textFieldOTP(
      {required bool first,
      required bool last,
      required int numero,
      required TextEditingController digitCodeN}) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
          color: Color(0xffF6F6F6), borderRadius: BorderRadius.circular(9)),
      child: TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.number,
        showCursor: false,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: Colors.black,
        textAlign: TextAlign.center,
        controller: digitCodeN,
        style: theme().textTheme.headline1,
        onChanged: (value) {
          controller.onSubmitOTP();
          if ((value.length == 1) && (last == false)) {
            FocusScope.of(context).nextFocus();
          } else if ((value.length == 0) && (first == false)) {
            FocusScope.of(context).previousFocus();
          } else if ((value.length == 1) && (last == true)) {
            FocusScope.of(context).unfocus();
          }
        },
      ),
    );
  }
}
