import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/validator/validitor.dart';
import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:e_commerce_app/widget/button_widget.dart';
import 'package:e_commerce_app/widget/text_filed_widget.dart';
import 'package:flutter/material.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Have a question ?',style: style_Categories,),
            SizedBox(height: 5,),
            Text('contact us now',style: style_Categories,),
            SizedBox(height: 50,),
            TextFiledWidget(
                enable: false,
                text: 'Email',
                hint: 'example@yahoo.com',
                colortxet: kBlackColors,
                validator: Validator.email,
                colorborder: kGrayColors),
            SizedBox(height: 20,),
            TextFiledWidget(
                enable: false,
                text: 'Phone',
                hint: '+34454567679',
                colortxet: kBlackColors,
                validator: Validator.email,
                colorborder: kGrayColors),
            SizedBox(height: 20,),
            TextFiledWidget(
                enable: false,
                text: 'Name',
                hint: 'user name',
                colortxet: kBlackColors,
                validator: Validator.email,
                colorborder: kGrayColors),
            SizedBox(height: 20,),
            TextFiledWidget(
                enable: false,
                text: 'Massage',
                hint: 'what do you think ?',
                maxlin: 5,
                colortxet: kBlackColors,
                validator: Validator.email,
                colorborder: kGrayColors),
            SizedBox(height: 20,),
            ButtonWidget(
                ontap: (){},
                txet: 'Submit',
                backgroundColor: kPrimaryColors,
                textColor: kWhiteColors,

            )


          ],
        ),
      ),
    );
  }
}
