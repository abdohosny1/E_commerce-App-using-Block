import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/bottom_navigation/view.dart';
import 'package:e_commerce_app/feature/onBordering/view.dart';
import 'package:e_commerce_app/widget/button_widget.dart';
import 'package:e_commerce_app/widget/text_button_widget.dart';
import 'package:flutter/material.dart';

part 'units/splash_title.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColors,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SplashTitle(),
            SizedBox(height: 10,),

            Image.asset("assets/images/splash.png",fit: BoxFit.cover,),
            SizedBox(height: 30,),

            ButtonWidget(
                ontap: ()=>MagicRouter.navigateTo(OnBorderingView()),
              txet: "Let`s Start",
              backgroundColor: kWhiteColors,
              textColor: kPrimaryColors,
                ),
            SizedBox(height: 30,),

          TextButtonWidget(
            text: "Skip for now",
            ontap: ()=>MagicRouter.navigateTo(BottomNavigationView()),
            textcolor: kWhiteColors,
          )



          ],
        ),
      ),
    );
  }
}
