import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:flutter/material.dart';

class ItemAccountInformation extends StatelessWidget {

  String? data_name;
  String? data_value;
  void Function()? ontap;
  ItemAccountInformation({
    this.data_value,
    this.data_name,
    this.ontap
});


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(.79),
      child: ListTile(
        title: Text(data_name!,style: style_name_product,),
        subtitle: Text(data_value!,style: style_price,),
        trailing: TextButton(
          child: Text("change",style: TextStyle(
              color: kGrayColors
          ),),
          onPressed: ontap,
        ),
      ),
    );
  }
}
