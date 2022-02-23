import 'package:e_commerce_app/const/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonWithIconWidget extends StatelessWidget {
   ButtonWithIconWidget(
       {Key? key,
         this.text,
         this.ontap,
         this.icon,
         this.textsize,
         this.backgroundColor,
         this.textColor,
         this.iconsize,
         this.iconColor
       }) : super(key: key);
   String? text;
  void Function()? ontap;
  IconData? icon;
   final Color? backgroundColor;
   final Color? textColor;
   final double? textsize;
   final Color? iconColor;
   final double? iconsize;
  @override
  Widget build(BuildContext context) {
    return  Container(
      transformAlignment: AlignmentDirectional.center,
      height: 50,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: backgroundColor
      ),
      child: InkWell(
        onTap: ontap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(icon,color: iconColor,size: iconsize,),

            SizedBox(width: 16,),

            Text(text!,style: TextStyle(
                color: textColor,fontWeight: FontWeight.bold,fontSize: textsize
            ),
              textAlign: TextAlign.center,
            ),

           // Icon(icon,color: kWhiteColors,)
          ],

        ),
      ),
    );
  }
}
