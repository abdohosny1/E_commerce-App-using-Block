part of'../view.dart';

class SignInFields extends StatelessWidget {
   SignInFields({Key? key}) : super(key: key);
  var formkey=GlobalKey<FormState>();
  TextEditingController user=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var cubit=SigninCubit.get(context);
    return Form(
      key: formkey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFiledWidget(
              enable: false,
              text: "Email",
              hint: "Email",
              colorhint: kWhiteColors,
              colortxet: kWhiteColors,
              colorborder: kWhiteColors,

              validator: Validator.userName,
            ),
            SizedBox(height: 20,),
            BlocBuilder(
              bloc: cubit,
              builder:(context,state)=> TextFiledWidget(

                controller: password,
                enable: cubit.isloading,
                text: 'Password',
                hint: 'Password',
                colorhint: kWhiteColors,
                colortxet: kWhiteColors,
                colorborder: kWhiteColors,

                validator: Validator.userName,
                icon: IconButton(
                  icon:cubit.isloading?
                  Icon(Icons.visibility_off_outlined,color: Colors.black45,)
                      :Icon(Icons.visibility_outlined,color: kWhiteColors),
                  onPressed: (){
                    cubit.changeVisibility();
                  },
                ),

              ),
            ),



          ],
        ),
      ),
    );
  }
}
