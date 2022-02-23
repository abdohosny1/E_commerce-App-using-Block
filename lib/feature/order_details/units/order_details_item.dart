import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:flutter/material.dart';

class OrderDetailsItem extends StatelessWidget {
  const OrderDetailsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Container(
        height: 120,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(

              child: Image.asset("assets/images/pro2.png",
                fit:BoxFit.contain ,

              ),
              padding: EdgeInsets.only(left: 10,right: 20),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Airpods Pro',style: style_Categories,),
                SizedBox(height: 5,),
                Text('USD 249',style: style_price,),
                Spacer(),
                Text('Total : USD 249',style: style_text_price,)
              ],
            ),
            Spacer(),
            CircleAvatar(
                backgroundColor: kPrimaryColors,
                radius: 15,
                child: Text('1x',style: TextStyle(color: kWhiteColors),))
          ],
        ),
      ),
    );
  }
}
