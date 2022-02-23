import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort//model/bannerModel.dart';
import 'package:flutter/material.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner({Key? key , required this.model}) : super(key: key);

  final BannerModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width-80,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: kPrimaryColors,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10,bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${model.name}",style: style_name_banner,),
                SizedBox(height: 5,),
                Text("${model.price}",style: TextStyle(
                    color: kWhiteColors,fontSize: 15
                ),),
              ],
            ),
            Spacer(),
            Image.asset("${model.image}")
          ],
        ),
      ),
    );
  }
}
