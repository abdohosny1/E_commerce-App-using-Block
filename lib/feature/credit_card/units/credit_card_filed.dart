import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/cort/validator/validitor.dart';
import 'package:e_commerce_app/widget/text_filed_widget.dart';
import 'package:flutter/material.dart';

class CreditCardFiled extends StatelessWidget {
  const CreditCardFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFiledWidget(
          enable: false,
          text: "Card Number",
          inputType: TextInputType.number,
          validator: Validator.email,
          hint: "xxx-xxxx-xxxx",
          colorhint: kGrayColors,
          colortxet: kBlackColors,
          colorborder: kGrayColors,



        ),
        SizedBox(height: 20,),

        Row(

          children: [
            Expanded(
                child: TextFiledWidget(
                  enable: false,
                  text: "Expire DATA",
                  inputType: TextInputType.number,
                  validator: Validator.email,
                  hint: "MM/YY",
                  colorhint: kGrayColors,
                  colortxet: kBlackColors,
                  colorborder: kGrayColors,



                )),
            SizedBox(width: 10,),
            Expanded(
              child: TextFiledWidget(
                enable: false,
                text: "CVV",
                inputType: TextInputType.number,
                validator: Validator.email,
                hint: "XXX",
                colorhint: kGrayColors,
                colortxet: kBlackColors,
                colorborder: kGrayColors,



              ),
            ),

          ],
        ),
      ],
    );
  }
}
