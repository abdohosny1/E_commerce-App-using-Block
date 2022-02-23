import 'package:e_commerce_app/const/style.dart';
import 'package:flutter/material.dart';

class CheckOutPrice extends StatelessWidget {
  const CheckOutPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Coast : ",
              style: style_Categories,
            ),
            Text(
              "USD 1355",
              style: style_price,
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Taxes : ",
              style: style_Categories,
            ),
            Text(
              "USD 156",
              style: style_price,
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Discount : ",
              style: style_Categories,
            ),
            Text(
              "USD  0",
              style: style_discount,
            )
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total : ",
              style: style_Categories,
            ),
            Text(
              "USD 15786",
              style: style_price,
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
