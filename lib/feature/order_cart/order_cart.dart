
import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/bottom_navigation/view.dart';
import 'package:e_commerce_app/feature/home//view.dart';
import 'package:e_commerce_app/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void bootomSheet(context){


  showModalBottomSheet(
      isScrollControlled:true,
      backgroundColor: Colors.transparent,
      barrierColor: kWhiteColors,



      elevation: 100,

      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.only(topRight: Radius.circular(30))
      // ),

      context: context,
      builder: (context){
        return Container(

          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/check.png"
                ,fit: BoxFit.cover,),
                SizedBox(height: 20,),

                Text("Product Add tTo Card",style: style_Heder,),
                SizedBox(height: 30,),
                ButtonWidget(
                    ontap: (){},
                   txet: "Go to Cart",
                  textColor: kPrimaryColors,
                  backgroundColor: kWhiteColors,
                  textsize: 17,
                ),
                SizedBox(height: 20,),

                ButtonWidget(
                  ontap: ()=>MagicRouter.navigateAndReplacement(BottomNavigationView()),
                  txet: "Go to Shopping",
                  textColor: kWhiteColors,
                  backgroundColor: kPrimaryColors,
                  textsize: 17,
                ),

              ],
            ),
          ),

        );
      });
}




