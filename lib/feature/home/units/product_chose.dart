part of'../view.dart';

class ProductChoses extends StatelessWidget {
   ProductChoses({Key? key,this.icon,this.text,this.ontap}) : super(key: key);
  IconData? icon;
  String? text;
   void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: ontap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          CircleAvatar(
            radius: 25,
            child: Icon(icon,color: kPrimaryColors,),
            backgroundColor:kEditTextColors,
            foregroundColor: kCircleAvatarColors,),
          SizedBox(height: 5,),
          Text(text!,style: TextStyle(
              color: kPrimaryColors,fontSize: 15
          ),)
        ],
      ),
    );
  }
}
