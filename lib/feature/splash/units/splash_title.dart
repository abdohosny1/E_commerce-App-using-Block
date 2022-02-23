part of'../view.dart';


class SplashTitle extends StatelessWidget {
  const SplashTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("LATECH",style: TextStyle(
            color: kWhiteColors,fontFamily: "PTMono",fontSize: 35,fontWeight: FontWeight.bold,
            letterSpacing: 5.0),),
        SizedBox(height: 5,),
        Text("TECH MARKET",style: TextStyle(
            color: kWhiteColors,letterSpacing: 5.0,fontSize: 13
        ),),
      ],
    );
  }
}
