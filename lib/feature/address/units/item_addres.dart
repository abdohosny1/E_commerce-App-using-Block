import 'package:e_commerce_app/const/style.dart';
import 'package:flutter/material.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(bottom:20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Work",style: style_Categories,),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,top: 10,bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('. Cairo',style: style_txet_address,),
                    Text('. shobra',style: style_txet_address,),
                    Text('. ahmed mather st',style: style_txet_address,),
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.edit,color: Colors.green,)),
              SizedBox(height: 20,),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.delete_forever,color: Colors.red,)),
            ],
          )
        ],
      ),
    );
  }
}
