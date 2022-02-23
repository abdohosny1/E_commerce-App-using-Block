import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/order_details/view.dart';
import 'package:flutter/material.dart';


class OrderItem extends StatelessWidget {
  const OrderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>MagicRouter.navigateTo(OrderDeatailsView()),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('#1234',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text('Status:new',style: TextStyle(color: kGrayColors),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total :1234 EGP',style: style_price,),
                  Text('2/4/2022',style: TextStyle(color: kBlackColors),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
