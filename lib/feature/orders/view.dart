import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/feature/orders/units/order_item.dart';
import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:flutter/material.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Orders ",style: style_Categories,),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                  itemBuilder: (context,index){
                    return OrderItem();
                  }
              ),
            )


          ],
        ),
      ),
    );
  }
}
