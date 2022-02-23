import 'package:e_commerce_app/feature/checkout/checkout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressCheckBox extends StatelessWidget {
  const AddressCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child:BlocBuilder<CheckoutCubit,CheckoutState>(
        builder: (context,state){

          var cubit=CheckoutCubit.get(context);
          return  ListView.builder(
              itemCount: cubit.checkBoxListTileAddress.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(
                    child: Column(
                      children: [
                        CheckboxListTile(
                            activeColor: Colors.pink[300],
                            title: Text(
                              cubit.checkBoxListTileAddress[index].title!,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.5),
                            ),
                      autofocus: false,
                            dense: true,
                            secondary: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.edit,color: Colors.green,)),

                            value: cubit.checkBoxListTileAddress[index].isCheck,
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (bool? val) {
                              cubit.itemChangeAddress(val!, index);
                            })
                      ],
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
