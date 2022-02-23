
import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/cort/validator/validitor.dart';
import 'package:e_commerce_app/feature/bottom_navigation/view.dart';
import 'package:e_commerce_app/feature/signup/view.dart';
import 'package:e_commerce_app/widget/button_widget.dart';
import 'package:e_commerce_app/widget/text_button_widget.dart';
import 'package:e_commerce_app/widget/text_filed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit.dart';



part 'unit/signin_button_confirm.dart';
part 'unit/signin_image_filed.dart';
part 'unit/signin_fields.dart';

class SigninView extends StatelessWidget {
  const SigninView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>SigninCubit(),
        child:  Scaffold(
          backgroundColor: kPrimaryColors,
          body: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: Column(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(child: Text("Login",style: styleTitle,)),
               SizedBox(height: 20,),

               Column(
                 children: [
                   SignInFields(),
                   SizedBox(height: 30,),
                   ConfirmSignIn(),
                 ],
               )


              ],
            ),

          ),
        ),
    );
  }
}
