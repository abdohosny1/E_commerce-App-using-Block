
import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/cort//model/borderModel.dart';

import 'package:flutter/material.dart';

class BulidBorderingItem extends StatelessWidget {
   BulidBorderingItem({Key? key,required this.model}) : super(key: key);

 final BorderingModel model;

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: kPrimaryColors,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            height: MediaQuery.of(context).size.height/2,
            child: Image(
              image:AssetImage('${model.image}') ,
              fit: BoxFit.contain,
             //todo:chang size

            ),
          ),
          SizedBox(height: 50,),
     Text("${model.title}",style: TextStyle(
       color: kWhiteColors,fontWeight: FontWeight.w700,fontSize: 20,letterSpacing: 3
     ),)



        ],),
    );
  }
}
