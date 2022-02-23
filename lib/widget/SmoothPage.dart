import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class SmoothPageDesgin extends StatelessWidget {
   SmoothPageDesgin({Key? key,
     this.controller,
     this.list,
     this.colors,
     this.hight,
     this.expansio,
     this.width,
   })
       : super(key: key);
 final  PageController? controller;
   List<dynamic>? list;

   Color? colors;
   double? hight;
   double? width;
   double? expansio;
  @override
  Widget build(BuildContext context) {
    return  SmoothPageIndicator(
      count: list!.length,
      controller: controller!,
      effect: ExpandingDotsEffect(
          dotColor: colors!,
          activeDotColor: Colors.black45,
          dotHeight: hight! ,
          expansionFactor: expansio!,
          dotWidth:width!,
          spacing: 5.0
      ),

    );
  }
}
