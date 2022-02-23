import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/validator/validitor.dart';
import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:e_commerce_app/widget/button_widget.dart';
import 'package:e_commerce_app/widget/text_filed_widget.dart';
import 'package:flutter/material.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Change Password',style: style_Categories,),
            SizedBox(height: 50,),
            TextFiledWidget(
                enable: false,
                text: 'curent password',
                hint: '* * * * * * * * * * *',
                colortxet: kBlackColors,
                validator: Validator.password,
                colorborder: kGrayColors),
            SizedBox(height: 30,),
            TextFiledWidget(
                enable: false,
                text: 'New password',
                hint: '* * * * * * * * * * *',
                colortxet: kBlackColors,
                validator: Validator.password,
                colorborder: kGrayColors),
            SizedBox(height: 50,),
            ButtonWidget(
                ontap: (){},
                 txet: 'confirm modification',
              backgroundColor: kPrimaryColors,
              textColor: kWhiteColors,
              textsize: 16,
                )




          ],
        ),
      ),
    );
  }
}
