import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/account_information/view.dart';
import 'package:e_commerce_app/feature/address/view.dart';
import 'package:e_commerce_app/feature/bottom_navigation/cubit.dart';
import 'package:e_commerce_app/feature/bottom_navigation/state.dart';
import 'package:e_commerce_app/feature/contact_us/view.dart';
import 'package:e_commerce_app/feature/person/unit/ist_information.dart';
import 'package:e_commerce_app/feature/person/unit/item_information.dart';
import 'package:e_commerce_app/feature/terms_conditions/view.dart';
import 'package:e_commerce_app/feature//orders/view.dart';
import 'package:e_commerce_app/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class PersonView extends StatelessWidget {
  const PersonView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit,BottomNavigationState>(
        builder:(context,state){
          return Scaffold(
            appBar: AppBar(
              title:  Text("ACCount",style: style_Heder,),
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: kWhiteColors,
            ),
            body: Padding(
              padding: const EdgeInsets.only(left: 30.0,right: 20,top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/welcome.png'),
                        radius: 40,
                      ),
                      SizedBox(width: 20,),
                      Text("Name user",style: style_Categories,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  ItemInformation(text: 'Orders',ontap: ()=>MagicRouter.navigateTo(OrdersView())),
                  ItemInformation(text: 'Account information',ontap: ()=>MagicRouter.navigateTo(AccountInformation()),),
                  ItemInformation(text: 'Help',ontap: (){},),
                  ItemInformation(text: 'Contact us',ontap: ()=>MagicRouter.navigateTo(ContactUsView()),),
                  ItemInformation(text: 'Terms & Conditions',ontap: ()=>MagicRouter.navigateTo(TermsConditionView()),),
                  ItemInformation(text: 'Your Adresses',ontap: ()=>MagicRouter.navigateTo(AddressView()),),
                  ItemInformation(text: 'About us',ontap: (){},),
                  SizedBox(height: 10,),

                  ButtonWidget(
                      ontap: (){},
                       backgroundColor: Colors.red,
                       txet: 'Log out',
                      textColor: kWhiteColors,
                  )

                ],
              ),
            ),
          );
        });
  }
}
