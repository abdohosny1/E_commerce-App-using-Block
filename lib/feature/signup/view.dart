

import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/cort/validator/validitor.dart';
import 'package:e_commerce_app/feature/signin/view.dart';
import 'package:e_commerce_app/widget/button_widget.dart';
import 'package:e_commerce_app/widget/text_button_widget.dart';
import 'package:e_commerce_app/widget/text_filed_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit.dart';

part 'unit/signup_fileds.dart';
part 'unit/signup_button_next.dart';


class SignUPView extends StatelessWidget {
  const SignUPView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>SignUpCubit(),
      child: Scaffold(
        backgroundColor: kPrimaryColors,
        body: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Center(child: Text("Create an account ",style: styleTitle,)),
              SizedBox(height: 20,),
              Column(
                children: [
                  SignupFileds(),
                  SizedBox(height: 30,),
                  SignupButton(),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
