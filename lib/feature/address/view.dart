import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/add_address/view.dart';
import 'package:e_commerce_app/feature/address/units/item_addres.dart';
import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:flutter/material.dart';

class AddressView extends StatelessWidget {
  const AddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('My Addresses',style: style_Categories,),
                IconButton(
                    onPressed: ()=>MagicRouter.navigateTo(AddAddressView()),
                    icon: Icon(Icons.add,size: 30,))
              ],
            ),
            SizedBox(height: 30,),
           Expanded(
             child: ListView.builder(

               itemCount: 2,
                 itemBuilder: (context,index){
                   return AddressItem();
                 }
             ),
           )



          ],
        ),
      ),
    );
  }
}
