import 'package:e_commerce_app/const/colors.dart';
import 'package:flutter/material.dart';

class TextFiledWidget extends StatelessWidget {
   String? text;
   String? hint;
   final TextEditingController? controller;
   final String? Function(String?)? validator;
   final TextInputType? inputType;
   final Widget? icon;
   final Color? colortxet;
   final Color? colorhint;
   final Color colorborder;
   final int? maxlin;
   bool enable=false;

   TextFiledWidget({
     this.text,
     this.icon,
     this.controller,
    required this.enable,
     this.inputType,
     this.validator,
     this.hint,
     this.colorhint,
     this.colortxet,
     this.maxlin,
     required this.colorborder
});
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(text!,style: TextStyle(
              color: colortxet,fontWeight: FontWeight.w800,fontSize: 17
          ),),
          SizedBox(height: 8,),
          TextFormField(
            keyboardType: inputType,
            controller: controller,
            obscureText: enable,
            validator: validator,
            maxLines:maxlin ,

            decoration: InputDecoration(
              suffixIcon: icon,
              hintText: hint!,
              hintStyle: TextStyle(color: colorhint),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: colorborder)
              ),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.red)
              ),
              border: OutlineInputBorder(
                  gapPadding: 30,
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: colorborder)
              ),


            ),
          )

        ],
      ),
    );
  }
}
