import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  void Function()? ontap;
  final String? text;
  final Color? textcolor;
  final double? sizetext;

  TextButtonWidget({
    this.ontap,
    this.text,
    this.textcolor,
    this.sizetext,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // style: ButtonStyle(
      //   backgroundColor: MaterialStateProperty.resolveWith<Color?>(
      //         (Set<MaterialState> states) {
      //       if (states.contains(MaterialState.pressed))
      //         return Theme.of(context).colorScheme.primary.withOpacity(0.5);
      //       return null; // Use the component's default.
      //     },
      //   ),
      // ),

        onPressed: ontap,
        child: Text(text!,style: TextStyle(
            color:textcolor,fontSize: sizetext
        ),)
    );
  }
}
