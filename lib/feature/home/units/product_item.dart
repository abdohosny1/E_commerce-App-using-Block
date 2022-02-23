import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/product_deatils/view.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: ()=>MagicRouter.navigateTo(ProductDetails()),
      child: Container(
        color: kWhiteColors,
        padding: EdgeInsets.only(left: 10,right: 10,top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/product.png"),
            SizedBox(height: 20,),
            Text("SurfaceLaptop",style: style_name_product,),
            SizedBox(height: 10,),
            Text("USD 999",style: style_text_price,),
            SizedBox(height: 5,),

          ],
        ),
      ),
    );
  }
}
