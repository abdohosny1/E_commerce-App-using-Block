import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/widget/button_widget.dart';
import 'package:flutter/material.dart';

void bootomSheetDoneOrder(context){


  showModalBottomSheet(
      isScrollControlled:true,
      backgroundColor: Colors.transparent,
      barrierColor: kPrimaryColors,



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
               CircleAvatar(
                 backgroundColor: kWhiteColors,
                 radius: 100,
                 child: CircleAvatar(
                   radius: 80,
                   backgroundColor: kWhiteColors,
                   backgroundImage:AssetImage("assets/images/doneorder.png"),

                 ),
               ),
                SizedBox(height: 20,),

                Text("Order Validiate!",style: TextStyle(
                  color: kWhiteColors,fontSize: 25
                ),),




              ],
            ),
          ),

        );
      });
}
