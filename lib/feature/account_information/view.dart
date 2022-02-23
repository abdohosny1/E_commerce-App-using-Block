import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/account_information/units/item_account_information.dart';
import 'package:e_commerce_app/feature/change_password/view.dart';
import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:flutter/material.dart';

class AccountInformation extends StatelessWidget {
  const AccountInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Account Information',style: style_Categories,),
            
            Center(
              child: Container(
                padding: EdgeInsets.all(30),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/welcome.png'),
                  radius: 60,
                ),
              ),
            ),

            ItemAccountInformation(
              data_name: "userName",
              data_value: "userName",
              ontap: (){},
            ),
            ItemAccountInformation(
              data_name: "Email",
              data_value: "user@yahoo.com",
              ontap: (){},
            ),
            ItemAccountInformation(
              data_name: "Phone",
              data_value: "+4367272424",
              ontap: (){},
            ),
            ItemAccountInformation(
              data_name: "password",
              data_value: "user@yahoo.com",
              ontap: ()=>MagicRouter.navigateTo(ChangePasswordView()),
            ),


          ],
        ),
      ),
    );
  }
}
