part of '../view.dart';

class ConfirmSignIn extends StatelessWidget {
   ConfirmSignIn({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonWidget(
          ontap: (){
            MagicRouter.navigateTo(BottomNavigationView());
          },
          txet: 'SIGN IN',
          backgroundColor: kWhiteColors,
          textColor: kPrimaryColors,
        ),
        SizedBox(height: 10,),
        TextButtonWidget(
          text: "Already you have an account ? SignUp",
          textcolor: kGoldColors,
          ontap: ()=>MagicRouter.navigateTo(SignUPView()),
        ),

        // TextButtonWidget(
        //   text: "Skip for now",
        //   textcolor: kWhiteColors,
        //   sizetext: 20,
        // )
        // TextButtonWidget(
        //   text: 'Forgot Password ?',
        //   textcolor: Colors.blueGrey,
        //   ontap: (){
        //     // MagicRouter.navigateTo(VerifyView());
        //
        //   },
        // ),
      ],
    );
  }
}
