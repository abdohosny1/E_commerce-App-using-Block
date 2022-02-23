import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/cort/validator/validitor.dart';
import 'package:e_commerce_app/feature/checkout/units/total_price.dart';
import 'package:e_commerce_app/feature/credit_card/units/credit_card_filed.dart';
import 'package:e_commerce_app/feature/credit_card/units/done_order.dart';
import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:e_commerce_app/widget/button_widget.dart';
import 'package:e_commerce_app/widget/text_filed_widget.dart';
import 'package:flutter/material.dart';

class CreditCardView extends StatelessWidget {
  const CreditCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pay Via Credit Card",style: style_Categories,),
            SizedBox(height: 30,),
            CreditCardFiled(),
            SizedBox(height: 30,),

            CheckOutPrice(),
            SizedBox(height: 20,),

            ButtonWidget(
              ontap: (){
                bootomSheetDoneOrder(context);
              },
              backgroundColor: kPrimaryColors,
              textColor: kWhiteColors,
              txet: "Pay",
            )
          ],
        ),
      ),
    );
  }
}
