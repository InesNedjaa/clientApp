import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livraison_app/Controller/AdresseScreenController.dart';
import '../Themes/Theme.dart';
import 'currentPage.dart';



class AdresseScreen extends StatelessWidget {

  AdresseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AdresseScreenController controller = Get.put( AdresseScreenController(),permanent: true,);

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
                      'Ajouter votre adresse',
                      maxLines: 2,
                      style: theme().textTheme.headline1 ,
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
                      'Pour faciliter la livraison de vos produits, vous\ndevez ajouter votre adresse .',
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
                      'Adresse',
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
                        /*onTap: ()async{
                          controller.handlePressButton(context);
                        },*/
                        style: theme().textTheme.headline4 ,
                        cursorColor: Colors.grey,
                        enabled: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                              EvaIcons.searchOutline,
                              color: Color(0xff9D9D9D),
                          ),
                          hintText: 'Ajouter votre adresse',
                          hintStyle:theme().textTheme.headline4?.copyWith(color: Color(0xff9D9D9D)),

                          counterText: "",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.transparent,
                          isCollapsed: true,
                        ),
                        keyboardType: TextInputType.streetAddress,
                        textInputAction: TextInputAction.done,
                        textAlignVertical: TextAlignVertical.center,
                        controller: controller.Adresse,
                        onChanged: (value){
                          controller.onSubmitAdresse();
                        },
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
                    child: GetBuilder(
                      builder:(AdresseScreenController controller)=> ElevatedButton(
                        onPressed: controller.submitAdresse?()async {
                          print(controller.Adresse.text);
                         controller.addAdresseUser(controller.Adresse.text);
                         Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Main_Page()));
                        }:null,
                        child: Text(
                          'Continue',
                          style: theme().textTheme.headline2 ,
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
            Spacer(flex:54,),
          ],
        ),
      ),
    );
  }
}
