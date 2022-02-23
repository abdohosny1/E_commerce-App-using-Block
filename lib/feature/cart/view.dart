import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/bottom_navigation/cubit.dart';
import 'package:e_commerce_app/feature/bottom_navigation/state.dart';
import 'package:e_commerce_app/feature/cart/units/cart_item.dart';
import 'package:e_commerce_app/feature/checkout/view.dart';
import 'package:e_commerce_app/widget/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CartView extends StatelessWidget {
  const CartView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit,BottomNavigationState>(
        builder:(context,state){
          return Scaffold(
            appBar: AppBar(
              title: Text("Shopping Cart",style: style_Heder,),
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: kWhiteColors,
            ),
            body: Column(
              children: [

             Expanded(
                 child: ListView.builder(
                   itemCount: 3,
                     itemBuilder: (context,index){
                       return CartItemDetails();
                     }
                 )
             ),


                ButtonWidget(
                    ontap: ()=>MagicRouter.navigateTo(CheckOutView()),
                    backgroundColor: kPrimaryColors,
                  textColor: kWhiteColors,
                  txet: "Cpmplete Order",
                )

              ],
            ),
          );
        });;
  }
}
