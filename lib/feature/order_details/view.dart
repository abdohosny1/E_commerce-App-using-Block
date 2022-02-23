import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/feature/order_details/units/order_details_item.dart';
import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:flutter/material.dart';

class OrderDeatailsView extends StatelessWidget {
  const OrderDeatailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text("#24567 ",style: style_Categories,),

           Container(
             height: 250,
             child: ListView.builder(
               physics: BouncingScrollPhysics(),
               itemCount: 2,
                 itemBuilder: (context,index){
                   return OrderDetailsItem();
                 }
             ),
           ),
           SizedBox(height: 30,),
           Column(

             children: [
               Row(
                 children: [
                   Text('Date : ',style: style_name_product,),
                   Spacer(),
                   Text('2/2/2022',style: style_price)
                 ],
               ),
               SizedBox(height: 15,),
               Row(
                 children: [
                   Text('Staus : ',style: style_name_product,),
                   Spacer(),
                   Text('New',style: style_price)
                 ],
               ),
               SizedBox(height: 15,),
               Row(
                 children: [
                   Text('Payment Method  : ',style: style_name_product,),
                   Spacer(),
                   Text('Online',style: style_price)
                 ],
               ),
               SizedBox(height: 15,),
               Row(
                 children: [
                   Text('Address : ',style: style_name_product,),
                   Spacer(),
                   Text('El Teraa ST ,Mansoura, Egypt',style: style_price)
                 ],
               ),
               SizedBox(height: 30,),
               Row(
                 children: [
                   Text('Cost : ',style: style_name_product,),
                   Spacer(),
                   Text('USD 1500',style: style_price)
                 ],
               ),
               SizedBox(height: 15,),

               Row(
                 children: [
                   Text('Taxes  : ',style: style_name_product,),
                   Spacer(),
                   Text('USD 100',style: style_price)
                 ],
               ),
               SizedBox(height: 15,),

               Row(
                 children: [
                   Text('Discount : ',style: style_name_product,),
                   Spacer(),
                   Text('USD 0',style: TextStyle(color: Colors.red,fontSize: 17))
                 ],
               ),
               SizedBox(height: 30,),

               Row(
                 children: [
                   Text('Total  : ',style: style_name_product,),
                   Spacer(),
                   Text('USD 2000',style: style_price)
                 ],
               ),

             ],
           )

          ],
        ),
      ),
    );
  }
}
