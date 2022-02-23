part of'../view.dart';


class ShowConnectionConfirm extends StatelessWidget {
  const ShowConnectionConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ButtonWidget(
          ontap: ()=>MagicRouter.navigateTo(SignUPView()),
          txet: "Create an account",
          backgroundColor: kWhiteColors,
          textColor: kPrimaryColors,
          textsize: 17,
        ),
        SizedBox(height: 40,),
        ButtonWithIconWidget(
          text: "Connect With Google",
          ontap: (){},
          textColor: kBlackColors,
          backgroundColor: kWhiteColors,
          icon:FontAwesomeIcons.google,
          iconColor: Colors.deepOrange,
          iconsize: 30,
          textsize: 15,
        ),
        SizedBox(height: 20,),
        ButtonWithIconWidget(
          text: "Connect With Facebook",
          ontap: (){},
          textColor: kBlackColors,
          backgroundColor: kWhiteColors,
          icon: FontAwesomeIcons.facebook,
          iconColor: kPrimaryColors,
          iconsize: 30,
          textsize: 15,
        ),
        SizedBox(height: 20,),

        TextButtonWidget(
          text: "Already you have an account ? Login",
          textcolor: kGoldColors,
          ontap: ()=>MagicRouter.navigateTo(SigninView()),
        ),
      ],
    );
  }
}
