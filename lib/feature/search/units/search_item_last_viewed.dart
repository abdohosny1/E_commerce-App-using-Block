import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/product_deatils/view.dart';
import 'package:flutter/material.dart';

class SearchItemLastViewed extends StatelessWidget {
  const SearchItemLastViewed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      color: kBackgroundColor,

      margin: EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: ()=>MagicRouter.navigateTo(ProductDetails()),
        child: Container(
          padding: EdgeInsets.all(20),
          color: kWhiteColors,
          child: Row(
            children: [
              Image.asset("assets/images/pro1.png"),
              SizedBox(width: 30,),

              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text("Google Home ",style: style_name_product,),
                  SizedBox(height: 5,),
                  Text("USD 678",style: style_text_price,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
