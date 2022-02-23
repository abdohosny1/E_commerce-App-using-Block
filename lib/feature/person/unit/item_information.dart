import 'package:flutter/material.dart';

class ItemInformation extends StatelessWidget {
  String? text;
  void Function()? ontap;

  ItemInformation(
  {
    this.text,
    this.ontap
}
      );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Card(

        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(19),
          child: Text(text!,style: TextStyle(
              fontSize: 16,fontWeight: FontWeight.w600
          ),),
        ),
      ),
    );
  }
}
