import 'package:flutter/material.dart';

class BulidImage extends StatelessWidget {
   BulidImage({Key? key ,this.text}) : super(key: key);
  String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Image.asset(text!),
    );
  }
}
