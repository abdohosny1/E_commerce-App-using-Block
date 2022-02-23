import 'package:e_commerce_app/feature/checkout/checkout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentCheckBox extends StatelessWidget {
  const PaymentCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child:BlocBuilder<CheckoutCubit,CheckoutState>(
        builder: (context,state){

          var cubit=CheckoutCubit.get(context);
          return  ListView.builder(
              itemCount: cubit.checkBoxListTileModel.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        CheckboxListTile(
                            activeColor: Colors.pink[300],
                            dense: true,
//font change
                            title: Text(
                              cubit.checkBoxListTileModel[index].title!,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.5),
                            ),
                            value: cubit.checkBoxListTileModel[index].isCheck,
                            secondary: Container(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                cubit.checkBoxListTileModel[index].img!,
                                fit: BoxFit.cover,
                              ),
                            ),
                            onChanged: (bool? val) {
                              cubit.itemChange(val!, index);
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
