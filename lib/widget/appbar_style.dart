import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends AppBar {
  AppBarWidget():super(

        backgroundColor: kWhiteColors,
        elevation: 0,
        leading: IconButton(
          icon:Icon( Icons.arrow_back,size: 30,color: kBlackColors,),
          onPressed: ()=>MagicRouter.pop(),
        ),

  );

}
