import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:livraison_app/Themes/Theme.dart';
import 'package:livraison_app/view/OTPScreen.dart';
import 'package:livraison_app/Controller/AppController.dart';
import 'package:livraison_app/Controller/LoginScreenController.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    LoginScreenController controller=Get.put( LoginScreenController(),permanent: true ,) ;
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
                      'Bienvenue dans notre\nlivraison de nourriture',
                      maxLines: 2,
                      style: theme().textTheme.headline1
                    ),
                  ),
                )
              ],
            ),
            Spacer(flex: 1,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: AutoSizeText(
                      'Ajoutez vos informations personnelles pour faciliter\nle contact avec notre service',
                      maxLines: 2,
                      style: theme().textTheme.headline5
                    ),
                  ),
                ),
              ],
            ),
            Spacer(flex: 3,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: AutoSizeText(
                      'Nom',
                      style: theme().textTheme.headline4
                    ),
                  ),
                ),
              ],
            ),
            Spacer(flex: 1,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF6F6F6),
                        borderRadius: BorderRadius.circular(9)),
                    height: 50,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child:TextFormField(
                        textAlign: TextAlign.left,
                        style: theme().textTheme.headline4,
                        cursorColor: Colors.grey,
                        enabled: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsetsDirectional.only( start:11.w),
                          hintText: 'Ajouter votre nom',
                          hintStyle: theme().textTheme.headline4?.copyWith(color:Color(0xff9D9D9D)),
                          counterText: "",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.transparent,
                          isCollapsed: true,
                        ),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.done,
                        textAlignVertical: TextAlignVertical.center,
                        controller: controller.nom,
                        onChanged: (value){
                          controller.onSubmitLogin();
                        },
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 1,),
              ],
            ),
            Spacer(flex: 3,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: AutoSizeText(
                      'Numéro de téléphone',
                      style: theme().textTheme.headline4
                    ),
                  ),
                ),
              ],
            ),
            Spacer(flex: 1,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF6F6F6),
                        borderRadius: BorderRadius.circular(9)),
                    height: 50,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextFormField(
                        style: theme().textTheme.headline4?.copyWith(height: 1.5),
                        cursorColor: Colors.grey,
                        enabled: true,
                        decoration: InputDecoration(
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(width: 11),
                              SvgPicture.asset('assets/images/icons8-algérie-48.svg'),
                              SizedBox(
                                width: 6,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3.5),
                                child: Text(
                                  "+213",
                                  style: theme().textTheme.headline4,
                                ),
                              )
                            ],
                          ),
                          counterText: "",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.transparent,
                          isCollapsed: true,
                        ),
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.done,
                        maxLength: 9,
                        textAlignVertical: TextAlignVertical.center,
                        controller:controller.phoneNumber,
                        onChanged: (phoneNumber){
                          controller.onSubmitLogin();
                         if(controller.submit1&&controller.submit2){
                            FocusScope.of(context).unfocus();
                        };}
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 1,),
              ],
            ),
            Spacer(flex: 4,),
            Row(
              children: [
                Spacer(flex: 1,),
                Expanded(
                  flex: 24,
                  child: Container(
                    height: 50,
                    child:
                      GetBuilder(
                        builder:(LoginScreenController controller)=> ElevatedButton(
                          onPressed:controller.submit1&&controller.submit2 ?()async{
                            AppController.showDialogLogin('vous recevrez un code pour vérifier','votre identité');
                            await Future.delayed(Duration(milliseconds: 2000));
                           if(controller.codeIsComing){ controller.createNewUser(controller.phoneNumber.text,controller.nom.text);
                           Get.to( OTPScreen(phoneNumber: controller.phoneNumber),); }
                          }:null,
                          child: Text(
                            'Continue',
                            style: theme().textTheme.headline2,
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffE6424B),
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
                    onPressed: () {
                      controller.onInDirectCall();
                    },
                    child: AutoSizeText(
                      'Contactez-nous',
                      style: theme().textTheme.headline5?.copyWith(color: Color(0xffE6424B),)
                    ))
              ],
            ),
            Spacer(flex: 50,),
          ],
        ),
      ),
    );
  }

}
