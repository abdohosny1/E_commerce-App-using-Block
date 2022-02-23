import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/favourit/view.dart';
import 'package:e_commerce_app/feature/order_cart/order_cart.dart';

import 'package:e_commerce_app/feature/product_deatils/product_cubit.dart';
import 'package:e_commerce_app/feature/product_deatils/units/list_image.dart';
import 'package:e_commerce_app/feature/product_deatils/units/pageview.dart';
import 'package:e_commerce_app/widget/SmoothPage.dart';
import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:e_commerce_app/widget/button_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>ProductCubit(),
      child: Scaffold(
        appBar: AppBarWidget(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text("Iphone pro 11",style: style_Categories,),
             SizedBox(height: 30,),

             Container(
               height: 300,
              child: Column(
                children: [
                  PageViewImage(
                    list: listImage,
                  ),
                  SizedBox(height: 10,),
                  BlocBuilder<ProductCubit,ProductState>(
                      builder: (context,state){
                        return  Center(
                          child: SmoothPageDesgin(
                            controller: ProductCubit.get(context).borderConteler,
                            list: listImage,
                            colors: Colors.grey.shade400,
                            hight: 8,
                            expansio: 2,
                            width: 8,
                          ),
                        );
                      }
                  )
                ],
              ),
            ),
             SizedBox(height: 30,),
             Center(
               child: Column(
                 children: [
                   Text("old price : 200 USD ",style: TextStyle(
                       color: kGrayColors,decoration: TextDecoration.lineThrough,
                       fontSize: 18
                   ),),
                   SizedBox(height: 10,),
                   Text("Total Price : 180 USD ",style: TextStyle(
                     color: kPrimaryColors,fontSize: 18
                   ),)

                 ],
               ),
             ),

             SizedBox(height: 20,),

             Text("Description :",style: style_Categories,),
             SizedBox(height: 5,),
             Text(". Color Red"),
             Text(". 6.5 Insh"),
             Text(". 256 GB"),
             SizedBox(height: 20,),

            Row(
              children: [
                Expanded(
                  child: ButtonWidget(
                    ontap: (){
                      bootomSheet(context);
                    },
                  txet: "Add To Cart",
                  backgroundColor: kPrimaryColors,
                  textColor: kWhiteColors,
              ),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  backgroundColor: kEditTextColors,
                  child: IconButton(
                      onPressed: ()=>MagicRouter.navigateTo(FavouritView()),
                      icon: Icon(Icons.star_border)),
                )
              ],
            )

           ],
          ),
        ),
      ),
    );
  }
}
