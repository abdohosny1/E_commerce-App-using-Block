

import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/feature/onBordering/cubit.dart';
import 'package:e_commerce_app/feature/onBordering/state.dart';
import 'package:e_commerce_app/feature/onBordering/units/onborder_list.dart';
import 'package:e_commerce_app/feature/onBordering/units/onborder_pageview.dart';
import 'package:e_commerce_app/widget/SmoothPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'units/onborder_skip_button.dart';
part 'units/onborder_floataction.dart';

class OnBorderingView extends StatelessWidget {
   OnBorderingView({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
        create: (context)=>OnBorderCubit(),
      child: Scaffold(
        backgroundColor: kPrimaryColors,

        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PageViewDesginWidget(list: list,),
              BlocBuilder<OnBorderCubit,OnBorderStae>(
                  builder: (context,state) {
                    var cubit = OnBorderCubit.get(context);
                    return Column(
                      children: [
                        SmoothPageDesgin(
                          controller: cubit.borderConteler,
                          list: list,
                          colors: kWhiteColors,
                          hight: 10,
                          expansio: 4,
                          width: 10,
                        ),
                        SizedBox(height: 20,),
                        SkipButton(),
                        SizedBox(height: 30,),
                      ],
                    );
                  }
              ),




            ],
          ),
        ),
      ),
    );
  }
}
