import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/feature/address/units/item_addres.dart';
import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:e_commerce_app/widget/button_widget.dart';
import 'package:e_commerce_app/widget/text_filed_widget.dart';
import 'package:flutter/material.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Add Address',style: style_Categories,),
              SizedBox(height: 30,),

              TextFiledWidget(
                  enable: false,
                  text: 'Title',
                  hint: 'Work , home , etc',
                  colorhint: kGrayColors,
                  colorborder: kGrayColors),
              SizedBox(height: 10,),
              TextFiledWidget(
                  enable: false,
                  text: 'City',
                  hint: 'cairo , mansoura',
                  colorhint: kGrayColors,
                  colorborder: kGrayColors),
              SizedBox(height: 10,),
              TextFiledWidget(
                  enable: false,
                  text: 'Region',
                  hint: 'sobra',
                  colorhint: kGrayColors,
                  colorborder: kGrayColors),
              SizedBox(height: 10,),
              TextFiledWidget(
                  enable: false,
                  text: 'Details',
                  hint: 'ahmed maher st',
                  colorhint: kGrayColors,
                  colorborder: kGrayColors),
              SizedBox(height: 10,),
              TextFiledWidget(
                  enable: false,
                  text: 'Notes',
                  hint: '',
                  maxlin: 5,
                  colorhint: kGrayColors,
                  colorborder: kGrayColors),
              SizedBox(height: 20,),
              ButtonWidget(
                  ontap: (){},
                  txet: 'Add',
                  backgroundColor: kPrimaryColors,
                textColor: kWhiteColors,
              )





            ],
          ),
        ),
      ),
    );
  }
}
