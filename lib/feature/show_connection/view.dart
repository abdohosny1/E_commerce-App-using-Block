import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/signin/view.dart';
import 'package:e_commerce_app/feature/signup/view.dart';
import 'package:e_commerce_app/widget/buttonWithIcon.dart';
import 'package:e_commerce_app/widget/button_widget.dart';
import 'package:e_commerce_app/widget/text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

part 'units/show_vonnection_confirm.dart';

class ShowConnexionView extends StatelessWidget {
  const ShowConnexionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColors,
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0,left: 30,right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),

            Text("Connection",style: styleTitle,),
            SizedBox(height: 200,),

           ShowConnectionConfirm(),


            SizedBox(height: 50,),

            TextButtonWidget(
              text: "Skip for now",
              textcolor: kWhiteColors,
              sizetext: 20,
            )

          ],
        ),
      ),
    );
  }
}
