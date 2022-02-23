part of '../view.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonWidget(
          ontap: (){
            // MagicRouter.navigateTo(WelcomeView());
          },
          txet: 'SignUp',
          backgroundColor: kWhiteColors,
          textColor: kPrimaryColors,

        ),
        SizedBox(height: 10,),
        TextButtonWidget(
          text: "Already you have an account ? Signin",
          textcolor: kGoldColors,
          ontap: ()=>MagicRouter.navigateTo(SigninView()),
        ),
      ],
    );
  }
}
