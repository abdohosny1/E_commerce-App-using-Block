import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/checkout/checkout_cubit.dart';
import 'package:e_commerce_app/feature/checkout/units/address_checkboc.dart';
import 'package:e_commerce_app/feature/checkout/units/list_check.dart';
import 'package:e_commerce_app/feature/checkout/units/payment_checkbox.dart';
import 'package:e_commerce_app/feature/checkout/units/total_price.dart';
import 'package:e_commerce_app/feature/credit_card/view.dart';
import 'package:e_commerce_app/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckOutView extends StatelessWidget {
  const CheckOutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>CheckoutCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Complete Order",
            style: style_Heder,
          ),
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: kWhiteColors,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment Method",
                style: style_Categories),
              SizedBox(
                height: 10,
              ),
              PaymentCheckBox(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Address",style: style_Categories,),
                  Text("Add Address",style: TextStyle(
                    color: kGrayColors
                  ),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              AddressCheckBox(),
              SizedBox(height: 20,),

              CheckOutPrice(),


              ButtonWidget(
                  ontap: ()=>MagicRouter.navigateTo(CreditCardView()),
                backgroundColor: kPrimaryColors,
                textColor: kWhiteColors,
                txet: "Complete Order",

              )
            ],
          ),
        ),
      ),
    );
  }
}
